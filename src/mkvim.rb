#!/usr/bin/env ruby
#
# usage: ruby mkvim.rb -d northday.txt northday.template.vim > northday.vim

# 2022-02-12

$def = Hash.new

def readdef(file)
  open(file) do |f|
    while ln = f.gets
      ln.chomp!
      ln.sub!(/\s*\#\s+.*/, "")
      case ln
      when /(\$\w+)\s*:\s*(.+)/
        $def[$1] = $2
      when /^$/
        next
      else
        $stderr.puts("bad format: #{ln}")
      end
    end
  end
end

# --------------------------------------------------------------------

require 'optparse'
opt = OptionParser.new

opt.on('-d FILE') {|file| readdef(file)}

opt.parse!(ARGV)

# --------------------------------------------------------------------

$termcolor = []
ColorDef = Struct.new(:r, :g, :b, :rgb, :i)

def make_termcolor
  make_termcolor_chroma
  make_termcolor_monochroma
end

def make_termcolor_chroma
  (16...232).each do |i|
    r = make_termcolor_chroma_hex((i - 16) / 6 / 6)
    g = make_termcolor_chroma_hex((i - 16) % 36 / 6)
    b = make_termcolor_chroma_hex((i - 16) % 36 % 6)
    $termcolor[i] = make_truecolor(r, g, b, i)
  end
end

def make_termcolor_chroma_hex(level)
  return level == 0 ? 0 : 95 + 40 * (level - 1)
end

def make_truecolor(r, g, b, i)
  cd = ColorDef.new(r, g, b, sprintf("%02x%02x%02x", r, g, b), i)
  return cd
end

def make_termcolor_monochroma
  (232...256).each do |i|
    level = 10 * (i - 232) + 8
    $termcolor[i] = make_truecolor(level, level, level, i)
  end
end

make_termcolor

def square_distance(c1, c2)
  return (c1.r - c2.r)**2 + (c1.g - c2.g)**2 + (c1.b - c2.b)**2
end

$t_def = Hash.new
$term2true = Hash.new
# $true2term = Hash.new

$def.each do |key, value|
  t_key = key.sub(/^\$/, "$t_")
  if /^\#([\da-f]{2})([\da-f]{2})([\da-f]{2})/i =~ value && !$def.include?(t_key)
    r, g, b, rgb = $1.hex, $2.hex, $3.hex, $1 + $2 + $3
    target = ColorDef.new(r, g, b, rgb, nil)
    nearest = $termcolor.filter {|cd| cd}.sort_by {|cd| square_distance(cd, target)}[0]
    $t_def[t_key] = nearest.i
    i = nearest.i
    # $true2term[rgb] = i
    $term2true[i] = $term2true[i].nil? ? [rgb] : ($term2true[i] + [rgb])
  end
end

$t_def.each {|key, value| $def[key] = value}

$term2true.filter {|_, ary| 1 < ary.sort.uniq.length}.each do |i, ary|
  truecolors = ary.sort.uniq.collect {|rgb|
    names = $def.filter {|_, d| d == '#' + rgb}.collect{|name, _| name}
    "\##{rgb} (#{names.join(' ')})"
  }.join(" ")
  $stderr.puts("#{i} (\##{$termcolor[i].rgb}) <- #{truecolors}")
end

# --------------------------------------------------------------------

$def["$modified"] = Time.now.strftime("%Y-%m-%d %H:%M%z")

# --------------------------------------------------------------------

while ln = gets
  ln = ln.chomp.gsub(/(\$\w+)/) {|m|
    if !$def[m]
      $stderr.puts("unknown def: #{m}")
      raise
    end
    $def[m] || "XXX"
  }
  next if /^""/ =~ ln
  next if /^" (\S+)/ =~ ln && !%w(File: Maintainer: Modified: License:).include?($1)
  puts ln
end
