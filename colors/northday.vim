" File:       northday.vim
" Maintainer: yoyuse <yoyuse@gmail.com>
" Modified:   2022-02-10 18:56+0900
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


hi! ColorColumn ctermbg=255 guibg=#f3f7fb
hi! Cursor ctermbg=233 guibg=#091119 ctermfg=231 guifg=#ffffff
hi! CursorColumn ctermbg=255 guibg=#f3f7fb
hi! CursorLine cterm=NONE gui=NONE ctermbg=255 guibg=#f3f7fb
hi! Directory ctermfg=67 guifg=#5588bb
hi! DiffAdd ctermbg=158 guibg=#cceedd
hi! DiffChange ctermbg=189 guibg=#ccccff
hi! DiffDelete cterm=NONE gui=NONE ctermbg=224 guibg=#ffccdd ctermfg=NONE guifg=NONE
hi! DiffText cterm=NONE gui=NONE ctermbg=225 guibg=#eeccff
hi! EndOfBuffer ctermfg=252 guifg=#c4ccd4
hi! ErrorMsg ctermbg=NONE guibg=NONE ctermfg=168 guifg=#cc6688
hi! VertSplit ctermbg=255 guibg=#f3f7fb ctermfg=255 guifg=#f3f7fb
hi! Folded ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a2aab2
hi! FoldColumn ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a2aab2
hi! SignColumn ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a2aab2
hi! IncSearch cterm=NONE gui=NONE ctermbg=189 guibg=#ccccff
hi! LineNr ctermbg=NONE guibg=NONE ctermfg=252 guifg=#c4ccd4
hi! CursorLineNr ctermbg=255 guibg=#e6eef6 ctermfg=248 guifg=#a2aab2 cterm=bold gui=bold
hi! MatchParen ctermbg=159 guibg=#bbeeee
hi! ModeMsg cterm=NONE gui=NONE ctermfg=72 guifg=#559977
hi! MoreMsg cterm=NONE gui=NONE ctermfg=252 guifg=#c4ccd4
hi! NonText ctermfg=252 guifg=#c4ccd4
hi! Normal ctermbg=231 guibg=#ffffff ctermfg=236 guifg=#2b333b
hi! Pmenu ctermbg=255 guibg=#e6eef6 ctermfg=236 guifg=#2b333b
hi! PmenuSel ctermbg=189 guibg=#ccccff ctermfg=236 guifg=#2b333b
hi! PmenuSbar ctermbg=245 guibg=#808890
hi! PmenuThumb ctermbg=168 guibg=#cc6688
hi! Question ctermfg=72 guifg=#559977
hi! QuickFixLine ctermbg=255 guibg=#e6eef6
hi! Search ctermbg=225 guibg=#eeccff
hi! SpecialKey ctermfg=252 guifg=#c4ccd4
hi! SpellBad cterm=undercurl gui=undercurl guisp=#cc6688
hi! SpellCap cterm=undercurl gui=undercurl guisp=#5588bb
hi! SpellLocal cterm=undercurl gui=undercurl guisp=#559977
hi! SpellRare cterm=undercurl gui=undercurl guisp=#aa66cc
hi! StatusLine cterm=NONE gui=NONE ctermbg=253 guibg=#d5dde5 ctermfg=236 guifg=#2b333b
hi! StatusLineNC cterm=NONE gui=NONE ctermbg=255 guibg=#e6eef6 ctermfg=248 guifg=#a2aab2
hi! TabLine ctermbg=255 guibg=#e6eef6 ctermfg=248 guifg=#a2aab2
hi! TabLineFill cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=255 guibg=#e6eef6
hi! TabLineSel cterm=NONE gui=NONE ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
hi! Title cterm=NONE gui=NONE ctermfg=72 guifg=#559977
hi! Visual ctermbg=255 guibg=#e6eef6
hi! VisualNOS ctermbg=255 guibg=#e6eef6
hi! WarningMsg ctermbg=NONE guibg=NONE ctermfg=134 guifg=#aa66cc
hi! Whitespace ctermfg=252 guifg=#c4ccd4
hi! WildMenu ctermbg=189 guibg=#ccccff ctermfg=NONE guifg=NONE
hi! Comment ctermfg=248 guifg=#a2aab2
hi! Constant ctermfg=30 guifg=#449999
hi! Identifier ctermfg=67 guifg=#5588bb
hi! Statement cterm=NONE gui=NONE ctermfg=104 guifg=#7777dd
hi! PreProc ctermfg=72 guifg=#559977
hi! Type cterm=NONE gui=NONE ctermfg=104 guifg=#7777dd
hi! Special ctermfg=134 guifg=#aa66cc
hi! Delimiter ctermfg=236 guifg=#2b333b
hi! Underlined ctermfg=67 guifg=#5588bb cterm=underline gui=underline
hi! Ignore ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
hi! Error cterm=NONE gui=NONE ctermbg=NONE guibg=NONE ctermfg=168 guifg=#cc6688
hi! Todo cterm=NONE gui=NONE ctermbg=158 guibg=#cceedd ctermfg=72 guifg=#559977
hi! diffAdded ctermfg=72 guifg=#559977
hi! diffRemoved ctermfg=168 guifg=#cc6688

hi! link vimContinue Comment
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Search
hi! link markdownBold Statement
hi! link markdownCode Special
hi! link markdownCodeDelimiter Special
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
