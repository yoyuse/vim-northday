" File:       northnight.vim
" Maintainer: yoyuse <yoyuse@gmail.com>
" Modified:   2022-03-01 19:59+0900
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'northnight'


hi! ColorColumn ctermbg=237 guibg=#333b43
hi! Conceal ctermbg=237 guibg=#333b43
hi! Cursor ctermbg=231 ctermfg=236 guibg=#ffffff guifg=#2b333b
hi! lCursor guibg=#88aa99 guifg=#2b333b
hi! CursorIM guibg=#cc99aa guifg=#2b333b
hi! CursorColumn ctermbg=237 guibg=#333b43
hi! CursorLine cterm=NONE ctermbg=237 gui=NONE guibg=#333b43
hi! Directory ctermfg=103 guifg=#7799bb
hi! DiffAdd ctermbg=108 ctermfg=236 guibg=#88aa99 guifg=#2b333b
hi! DiffChange ctermbg=104 ctermfg=236 guibg=#9999dd guifg=#2b333b
hi! DiffDelete cterm=NONE ctermbg=175 ctermfg=236 gui=NONE guibg=#cc99aa guifg=#2b333b
hi! DiffText cterm=NONE ctermbg=140 ctermfg=236 gui=NONE guibg=#bb99cc guifg=#2b333b
hi! EndOfBuffer ctermfg=240 guifg=#4d555d
hi! TermCursorNC ctermbg=240 ctermfg=236 guibg=#4d555d guifg=#2b333b
hi! ErrorMsg ctermbg=NONE ctermfg=175 guibg=NONE guifg=#cc99aa
hi! VertSplit ctermbg=240 ctermfg=240 guibg=#4d555d guifg=#4d555d
hi! Folded ctermbg=237 ctermfg=243 guibg=#333b43 guifg=#6f777f
hi! FoldColumn ctermbg=237 ctermfg=243 guibg=#333b43 guifg=#6f777f
hi! SignColumn ctermbg=237 ctermfg=243 guibg=#333b43 guifg=#6f777f
hi! IncSearch cterm=NONE ctermbg=104 ctermfg=236 gui=NONE guibg=#9999dd guifg=#2b333b
hi! LineNr ctermbg=NONE ctermfg=240 guibg=NONE guifg=#4d555d
hi! CursorLineNr cterm=bold ctermbg=239 ctermfg=250 gui=bold guibg=#404a54 guifg=#b3bbc3
hi! MatchParen ctermbg=109 guibg=#77aaaa
hi! ModeMsg cterm=NONE ctermfg=108 gui=NONE guifg=#88aa99
hi! MoreMsg cterm=NONE ctermfg=108 gui=NONE guifg=#88aa99
hi! NonText ctermfg=240 guifg=#4d555d
hi! Normal ctermbg=236 ctermfg=250 guibg=#2b333b guifg=#b3bbc3
hi! Pmenu ctermbg=239 ctermfg=250 guibg=#404a54 guifg=#b3bbc3
hi! PmenuSel ctermbg=104 ctermfg=236 guibg=#9999dd guifg=#2b333b
hi! PmenuSbar ctermbg=102 guibg=#808890
hi! PmenuThumb ctermbg=175 guibg=#cc99aa
hi! Question ctermfg=108 guifg=#88aa99
hi! QuickFixLine ctermbg=239 guibg=#404a54
hi! Search ctermbg=140 guibg=#bb99cc
hi! SpecialKey ctermfg=240 guifg=#4d555d
hi! SpellBad cterm=undercurl gui=undercurl guisp=#cc99aa
hi! SpellCap cterm=undercurl gui=undercurl guisp=#7799bb
hi! SpellLocal cterm=undercurl gui=undercurl guisp=#88aa99
hi! SpellRare cterm=undercurl gui=undercurl guisp=#bb99cc
hi! StatusLine cterm=NONE ctermbg=241 ctermfg=250 gui=NONE guibg=#5e666e guifg=#b3bbc3
hi! StatusLineNC cterm=NONE ctermbg=240 ctermfg=243 gui=NONE guibg=#4d555d guifg=#6f777f
hi! TabLine cterm=NONE ctermbg=240 ctermfg=243 gui=NONE guibg=#4d555d guifg=#6f777f
hi! TabLineFill cterm=NONE ctermbg=240 ctermfg=NONE gui=NONE guibg=#4d555d guifg=NONE
hi! TabLineSel cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi! Title cterm=NONE ctermfg=108 gui=NONE guifg=#88aa99
hi! Visual ctermbg=239 guibg=#404a54
hi! VisualNOS ctermbg=239 guibg=#404a54
hi! WarningMsg ctermbg=NONE ctermfg=140 guibg=NONE guifg=#bb99cc
hi! Whitespace ctermfg=240 guifg=#4d555d
hi! WildMenu ctermbg=104 ctermfg=236 guibg=#9999dd guifg=#2b333b
hi! Comment ctermfg=243 guifg=#6f777f
hi! Constant ctermfg=109 guifg=#77aaaa
hi! Identifier ctermfg=103 guifg=#7799bb
hi! Statement cterm=NONE ctermfg=104 gui=NONE guifg=#9999dd
hi! PreProc ctermfg=108 guifg=#88aa99
hi! Type cterm=NONE ctermfg=104 gui=NONE guifg=#9999dd
hi! Special ctermfg=140 guifg=#bb99cc
hi! Delimiter ctermfg=250 guifg=#b3bbc3
hi! Underlined cterm=underline ctermfg=103 gui=underline guifg=#7799bb
hi! Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! Error cterm=NONE ctermbg=NONE ctermfg=175 gui=NONE guibg=NONE guifg=#cc99aa
hi! Todo cterm=NONE ctermbg=108 ctermfg=236 gui=NONE guibg=#88aa99 guifg=#2b333b
hi! diffAdded ctermfg=108 guifg=#88aa99
hi! diffRemoved ctermfg=175 guifg=#cc99aa

if has('nvim')
  let g:terminal_color_0 = '#091119'
  let g:terminal_color_1 = '#cc99aa'
  let g:terminal_color_2 = '#88aa99'
  let g:terminal_color_3 = '#99aa77'
  let g:terminal_color_4 = '#7799bb'
  let g:terminal_color_5 = '#9999dd'
  let g:terminal_color_6 = '#77aaaa'
  let g:terminal_color_7 = '#6f777f'
  let g:terminal_color_8 = '#4d555d'
  let g:terminal_color_9 = '#ee88aa'
  let g:terminal_color_10 = '#66cc99'
  let g:terminal_color_11 = '#aacc66'
  let g:terminal_color_12 = '#77aadd'
  let g:terminal_color_13 = '#9999ff'
  let g:terminal_color_14 = '#66cccc'
  let g:terminal_color_15 = '#e6eef6'
else
  let g:terminal_ansi_colors = ['#091119', '#cc99aa', '#88aa99', '#99aa77', '#7799bb', '#9999dd', '#77aaaa', '#6f777f', '#4d555d', '#ee88aa', '#66cc99', '#aacc66', '#77aadd', '#9999ff', '#66cccc', '#e6eef6']
endif

hi! link vimContinue Comment
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Search
hi! link markdownBold Statement
hi! link markdownCode Special
hi! link markdownCodeDelimiter Special
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
