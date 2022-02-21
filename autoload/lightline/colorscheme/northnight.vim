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

  let col_base     = ["#6f777f", "#4d555d", 243, 240]
  let col_edge     = ["#2b333b", "#7e8892", 236, 102]
  let col_gradient = ["#b3bbc3", "#646e78", 250, 242]
  let col_nc       = ["#6f777f", "#4d555d", 243, 240]
  let col_tabfill  = ["#6f777f", "#4d555d", 243, 240]
  let col_normal   = ["#2b333b", "#7799bb", 236, 103]
  let col_error    = ["#2b333b", "#cc99aa", 236, 175]
  let col_warning  = ["#2b333b", "#bb99cc", 236, 140]
  let col_insert   = ["#2b333b", "#88aa99", 236, 108]
  let col_replace  = ["#2b333b", "#cc99aa", 236, 175]
  let col_visual   = ["#2b333b", "#bb99cc", 236, 140]
  let col_tabsel   = ["#2b333b", "#7799bb", 236, 103]

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


let g:lightline#colorscheme#northnight#palette = s:build_palette()


let &cpo = s:save_cpo
unlet s:save_cpo
