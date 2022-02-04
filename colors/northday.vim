" File:       northday.vim
" Maintainer: yoyuse <yoyuse@gmail.com>
" Modified:   2022-01-30 21:20+0900
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
hi! Cursor ctermbg=233 guibg=#09111a ctermfg=231 guifg=#ffffff
hi! CursorColumn ctermbg=255 guibg=#f3f7fb
hi! CursorLine cterm=NONE gui=NONE ctermbg=255 guibg=#f3f7fb
hi! Directory ctermfg=67 guifg=#5387ba
hi! DiffAdd ctermbg=153 guibg=#bcddff
hi! DiffChange ctermbg=225 guibg=#eeccff
hi! DiffDelete cterm=NONE gui=NONE ctermbg=224 guibg=#ffccdd ctermfg=NONE guifg=NONE
hi! DiffText cterm=NONE gui=NONE ctermbg=159 guibg=#b9eded
hi! EndOfBuffer ctermfg=252 guifg=#c3ccd4
hi! ErrorMsg ctermbg=NONE guibg=NONE ctermfg=168 guifg=#cc6588
hi! VertSplit ctermbg=255 guibg=#f3f7fb ctermfg=255 guifg=#f3f7fb
hi! Folded ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a3aab2
hi! FoldColumn ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a3aab2
hi! SignColumn ctermbg=255 guibg=#f3f7fb ctermfg=248 guifg=#a3aab2
hi! IncSearch cterm=NONE gui=NONE ctermbg=189 guibg=#ccccff
hi! LineNr ctermbg=NONE guibg=NONE ctermfg=252 guifg=#c3ccd4
hi! CursorLineNr ctermbg=255 guibg=#e4edf5 ctermfg=248 guifg=#a3aab2 cterm=bold gui=bold
hi! MatchParen ctermbg=159 guibg=#b9eded
hi! ModeMsg cterm=NONE gui=NONE ctermfg=72 guifg=#559a77
hi! MoreMsg cterm=NONE gui=NONE ctermfg=252 guifg=#c3ccd4
hi! NonText ctermfg=252 guifg=#c3ccd4
hi! Normal ctermbg=231 guibg=#ffffff ctermfg=236 guifg=#2a333b
hi! Pmenu ctermbg=255 guibg=#e4edf5
hi! PmenuSel ctermbg=189 guibg=#ccccff
hi! PmenuSbar ctermbg=245 guibg=#7e878f
hi! PmenuThumb ctermbg=168 guibg=#cc6588
hi! Question ctermfg=72 guifg=#559a77
hi! QuickFixLine ctermbg=255 guibg=#e4edf5
hi! Search ctermbg=225 guibg=#eeccff
hi! SpecialKey ctermfg=72 guifg=#559a77
hi! SpellBad cterm=undercurl gui=undercurl guisp=#cc6588
hi! SpellCap cterm=undercurl gui=undercurl guisp=#5387ba
hi! SpellLocal cterm=undercurl gui=undercurl guisp=#559a77
hi! SpellRare cterm=undercurl gui=undercurl guisp=#aa65cc
hi! StatusLine cterm=NONE gui=NONE ctermbg=253 guibg=#d3dbe3 ctermfg=236 guifg=#2a333b
hi! StatusLineNC cterm=NONE gui=NONE ctermbg=255 guibg=#e4edf5 ctermfg=248 guifg=#a3aab2
hi! TabLine ctermbg=255 guibg=#e4edf5 ctermfg=248 guifg=#a3aab2
hi! TabLineFill cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=255 guibg=#e4edf5
hi! TabLineSel cterm=NONE gui=NONE ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
hi! Title cterm=NONE gui=NONE ctermfg=72 guifg=#559a77
hi! Visual ctermbg=255 guibg=#e4edf5
hi! VisualNOS ctermbg=255 guibg=#e4edf5
hi! WarningMsg ctermbg=NONE guibg=NONE ctermfg=134 guifg=#aa65cc
hi! WildMenu ctermbg=189 guibg=#ccccff ctermfg=NONE guifg=NONE
hi! Comment ctermfg=248 guifg=#a3aab2
hi! Constant ctermfg=30 guifg=#439797
hi! Identifier ctermfg=67 guifg=#5387ba
hi! Statement cterm=NONE gui=NONE ctermfg=104 guifg=#7878dd
hi! PreProc ctermfg=72 guifg=#559a77
hi! Type cterm=NONE gui=NONE ctermfg=104 guifg=#7878dd
hi! Special ctermfg=134 guifg=#aa65cc
hi! Underlined ctermfg=67 guifg=#5387ba cterm=underline gui=underline
hi! Ignore ctermbg=NONE guibg=NONE ctermfg=NONE guifg=NONE
hi! Error cterm=NONE gui=NONE ctermbg=NONE guibg=NONE ctermfg=168 guifg=#cc6588
hi! Todo cterm=NONE gui=NONE ctermbg=NONE guibg=NONE ctermfg=72 guifg=#559a77

hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
