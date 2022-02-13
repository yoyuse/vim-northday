" File:       northday.vim
" Maintainer: yoyuse <yoyuse@gmail.com>
" Modified:   2022-02-13 13:37+0900
" License:    MIT


if !has('gui_running') && &t_Co < 256
  finish
endif

set background=light
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'northday'


hi! ColorColumn ctermbg=255 guibg=#f2f6fa
hi! Conceal ctermbg=255 guibg=#f2f6fa
hi! Cursor ctermbg=233 ctermfg=231 guibg=#091119 guifg=#ffffff
hi! lCursor guibg=#44aa77 guifg=#ffffff
hi! CursorIM guibg=#cc6688 guifg=#ffffff
hi! CursorColumn ctermbg=255 guibg=#f2f6fa
hi! CursorLine cterm=NONE ctermbg=255 gui=NONE guibg=#f2f6fa
hi! Directory ctermfg=67 guifg=#5588bb
hi! DiffAdd ctermbg=194 guibg=#cceedd
hi! DiffChange ctermbg=189 guibg=#ccccff
hi! DiffDelete cterm=NONE ctermbg=224 ctermfg=NONE gui=NONE guibg=#ffccdd guifg=NONE
hi! DiffText cterm=NONE ctermbg=225 gui=NONE guibg=#eeccff
hi! EndOfBuffer ctermfg=252 guifg=#c4ccd4
hi! TermCursorNC ctermbg=253 ctermfg=231 guibg=#d5dde5 guifg=#ffffff
hi! ErrorMsg ctermbg=NONE ctermfg=168 guibg=NONE guifg=#cc6688
hi! VertSplit ctermbg=254 ctermfg=254 guibg=#dee8f2 guifg=#dee8f2
hi! Folded ctermbg=255 ctermfg=248 guibg=#f2f6fa guifg=#a2aab2
hi! FoldColumn ctermbg=255 ctermfg=248 guibg=#f2f6fa guifg=#a2aab2
hi! SignColumn ctermbg=255 ctermfg=248 guibg=#f2f6fa guifg=#a2aab2
hi! IncSearch cterm=NONE ctermbg=189 gui=NONE guibg=#ccccff
hi! LineNr ctermbg=NONE ctermfg=252 guibg=NONE guifg=#c4ccd4
hi! CursorLineNr cterm=bold ctermbg=254 ctermfg=248 gui=bold guibg=#dee8f2 guifg=#a2aab2
hi! MatchParen ctermbg=159 guibg=#bbeeee
hi! ModeMsg cterm=NONE ctermfg=72 gui=NONE guifg=#44aa77
hi! MoreMsg cterm=NONE ctermfg=72 gui=NONE guifg=#44aa77
hi! NonText ctermfg=252 guifg=#c4ccd4
hi! Normal ctermbg=231 ctermfg=236 guibg=#ffffff guifg=#2b333b
hi! Pmenu ctermbg=254 ctermfg=236 guibg=#dee8f2 guifg=#2b333b
hi! PmenuSel ctermbg=189 ctermfg=236 guibg=#ccccff guifg=#2b333b
hi! PmenuSbar ctermbg=102 guibg=#808890
hi! PmenuThumb ctermbg=168 guibg=#cc6688
hi! Question ctermfg=72 guifg=#44aa77
hi! QuickFixLine ctermbg=254 guibg=#dee8f2
hi! Search ctermbg=225 guibg=#eeccff
hi! SpecialKey ctermfg=252 guifg=#c4ccd4
hi! SpellBad cterm=undercurl gui=undercurl guisp=#cc6688
hi! SpellCap cterm=undercurl gui=undercurl guisp=#5588bb
hi! SpellLocal cterm=undercurl gui=undercurl guisp=#44aa77
hi! SpellRare cterm=undercurl gui=undercurl guisp=#aa66cc
hi! StatusLine cterm=NONE ctermbg=253 ctermfg=236 gui=NONE guibg=#d5dde5 guifg=#2b333b
hi! StatusLineNC cterm=NONE ctermbg=254 ctermfg=248 gui=NONE guibg=#dee8f2 guifg=#a2aab2
hi! TabLine ctermbg=254 ctermfg=248 guibg=#dee8f2 guifg=#a2aab2
hi! TabLineFill cterm=NONE ctermbg=254 ctermfg=NONE gui=NONE guibg=#dee8f2 guifg=NONE
hi! TabLineSel cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
hi! Title cterm=NONE ctermfg=72 gui=NONE guifg=#44aa77
hi! Visual ctermbg=254 guibg=#dee8f2
hi! VisualNOS ctermbg=254 guibg=#dee8f2
hi! WarningMsg ctermbg=NONE ctermfg=134 guibg=NONE guifg=#aa66cc
hi! Whitespace ctermfg=252 guifg=#c4ccd4
hi! WildMenu ctermbg=189 ctermfg=NONE guibg=#ccccff guifg=NONE
hi! Comment ctermfg=248 guifg=#a2aab2
hi! Constant ctermfg=66 guifg=#449999
hi! Identifier ctermfg=67 guifg=#5588bb
hi! Statement cterm=NONE ctermfg=104 gui=NONE guifg=#7777dd
hi! PreProc ctermfg=72 guifg=#44aa77
hi! Type cterm=NONE ctermfg=104 gui=NONE guifg=#7777dd
hi! Special ctermfg=134 guifg=#aa66cc
hi! Delimiter ctermfg=236 guifg=#2b333b
hi! Underlined cterm=underline ctermfg=67 gui=underline guifg=#5588bb
hi! Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi! Error cterm=NONE ctermbg=NONE ctermfg=168 gui=NONE guibg=NONE guifg=#cc6688
hi! Todo cterm=NONE ctermbg=194 ctermfg=72 gui=NONE guibg=#cceedd guifg=#44aa77
hi! diffAdded ctermfg=72 guifg=#44aa77
hi! diffRemoved ctermfg=168 guifg=#cc6688

if has('nvim')
  let g:terminal_color_0 = '#e6eef6'
  let g:terminal_color_1 = '#cc6688'
  let g:terminal_color_2 = '#44aa77'
  let g:terminal_color_3 = '#88aa44'
  let g:terminal_color_4 = '#5588bb'
  let g:terminal_color_5 = '#7777dd'
  let g:terminal_color_6 = '#449999'
  let g:terminal_color_7 = '#808890'
  let g:terminal_color_8 = '#d5dde5'
  let g:terminal_color_9 = '#aa4466'
  let g:terminal_color_10 = '#337755'
  let g:terminal_color_11 = '#668822'
  let g:terminal_color_12 = '#336699'
  let g:terminal_color_13 = '#5555bb'
  let g:terminal_color_14 = '#227777'
  let g:terminal_color_15 = '#091119'
else
  let g:terminal_ansi_colors = ['#e6eef6', '#cc6688', '#44aa77', '#88aa44', '#5588bb', '#7777dd', '#449999', '#808890', '#d5dde5', '#aa4466', '#337755', '#668822', '#336699', '#5555bb', '#227777', '#091119']
endif

hi! link vimContinue Comment
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Search
hi! link markdownBold Statement
hi! link markdownCode Special
hi! link markdownCodeDelimiter Special
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
