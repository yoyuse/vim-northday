let s:save_cpo = &cpo
set cpo&vim


function! s:build_palette() abort
  let p = {
        \ 'normal':   {},
        \ 'inactive': {},
        \ 'insert':   {},
        \ 'replace':  {},
        \ 'visual':   {},
        \ 'tabline':  {}}

  let col_base     = ["$fginactive", "$bgbase", $t_fginactive, $t_bgbase]
  let col_edge     = ["$fgedge", "$bgedge", $t_fgedge, $t_bgedge]
  let col_gradient = ["$fg", "$bggradient", $t_fg, $t_bggradient]
  let col_nc       = ["$fginactive", "$bgbase", $t_fginactive, $t_bgbase]
  let col_tabfill  = ["$fginactive", "$bgbase", $t_fginactive, $t_bgbase]
  let col_normal   = ["$fgedge", "$blue", $t_fgedge, $t_blue]
  let col_error    = ["$fgedge", "$red", $t_fgedge, $t_red]
  let col_warning  = ["$fgedge", "$purple", $t_fgedge, $t_purple]
  let col_insert   = ["$fgedge", "$green", $t_fgedge, $t_green]
  let col_replace  = ["$fgedge", "$red", $t_fgedge, $t_red]
  let col_visual   = ["$fgedge", "$purple", $t_fgedge, $t_purple]
  let col_tabsel   = ["$fgedge", "$bgedge", $t_fgedge, $t_bgedge]

  let p.normal.middle = [col_base]
  let p.normal.left = [col_normal, col_gradient]
  let p.normal.right = [col_edge, col_gradient]
  let p.normal.error = [col_error]
  let p.normal.warning = [col_warning]

  let p.insert.left = [col_insert, col_gradient]
  let p.replace.left = [col_replace, col_gradient]
  let p.visual.left = [col_visual, col_gradient]

  let p.inactive.middle = [col_nc]
  let p.inactive.left = [col_nc, col_nc]
  let p.inactive.right = [col_nc, col_nc]

  let p.tabline.middle = [col_tabfill]
  let p.tabline.left = [col_tabfill]
  let p.tabline.tabsel = [col_tabsel]

  let p.tabline.right = copy(p.normal.right)

  return p
endfunction


let g:lightline#colorscheme#northday#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
