" File:       $name.vim
" Maintainer: $maintainer
" Modified:   $modified
" License:    $license


if !has('gui_running') && &t_Co < 256
  finish
endif

set background=$background
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = '$name'


"" used for the columns set with 'colorcolumn'
hi! ColorColumn ctermbg=$t_bgfringe guibg=$bgfringe
"" placeholder characters substituted for concealed text (see 'conceallevel')
hi! Conceal ctermbg=$t_bgfringe guibg=$bgfringe
"" character under the cursor
hi! Cursor ctermbg=$t_bgcursor ctermfg=$t_bg guibg=$bgcursor guifg=$bg
"" the character under the cursor when |language-mapping| is used (see 'guicursor')
hi! lCursor guibg=$green guifg=$bg
"" like Cursor, but used when in IME mode |CursorIM|
hi! CursorIM guibg=$red guifg=$bg
"" Screen-column at the cursor, when 'cursorcolumn' is set.
hi! CursorColumn ctermbg=$t_bgfringe guibg=$bgfringe
"" Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
hi! CursorLine cterm=NONE ctermbg=$t_bgfringe gui=NONE guibg=$bgfringe
"" directory names (and other special names in listings)
hi! Directory ctermfg=$t_blue guifg=$blue
"" diff mode: Added line |diff.txt|
hi! DiffAdd ctermbg=$t_bggreen ctermfg=$t_absblack guibg=$bggreen guifg=$absblack
"" diff mode: Changed line |diff.txt|
hi! DiffChange ctermbg=$t_bgmagenta ctermfg=$t_absblack guibg=$bgmagenta guifg=$absblack
"" diff mode: Deleted line |diff.txt|
hi! DiffDelete cterm=NONE ctermbg=$t_bgred ctermfg=$t_absblack gui=NONE guibg=$bgred guifg=$absblack
"" diff mode: Changed text within a changed line |diff.txt|
hi! DiffText cterm=NONE ctermbg=$t_bgpurple ctermfg=$t_absblack gui=NONE guibg=$bgpurple guifg=$absblack
"" filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
hi! EndOfBuffer ctermfg=$t_fgpale guifg=$fgpale
"" cursor in a focused terminal
" hi! TermCursor ctermbg=$t_bgcursor ctermfg=$t_bg guibg=$bgcursor guifg=$bg
"" cursor in an unfocused terminal
hi! TermCursorNC ctermbg=$t_bgbase ctermfg=$t_bg guibg=$bgbase guifg=$bg
"" error messages on the command line
hi! ErrorMsg ctermbg=NONE ctermfg=$t_red guibg=NONE guifg=$red
"" the column separating vertically split windows
hi! VertSplit ctermbg=$t_bgbase ctermfg=$t_bgbase guibg=$bgbase guifg=$bgbase
"" line used for closed folds
hi! Folded ctermbg=$t_bgfringe ctermfg=$t_fgcomment guibg=$bgfringe guifg=$fgcomment
"" 'foldcolumn'
hi! FoldColumn ctermbg=$t_bgfringe ctermfg=$t_fgcomment guibg=$bgfringe guifg=$fgcomment
"" column where |signs| are displayed
hi! SignColumn ctermbg=$t_bgfringe ctermfg=$t_fgcomment guibg=$bgfringe guifg=$fgcomment
"" 'incsearch' highlighting; also used for the text replaced with ":s///c"
hi! IncSearch cterm=NONE ctermbg=$t_bgmagenta ctermfg=$t_absblack gui=NONE guibg=$bgmagenta guifg=$absblack
"" |:substitute| replacement text highlighting
" hi! Substitute ctermbg=$t_bgpurple guibg=$bgpurple
"" Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
hi! LineNr ctermbg=NONE ctermfg=$t_fgpale guibg=NONE guifg=$fgpale
"" Line number for when the 'relativenumber' option is set, above the cursor line.
" hi! LineNrAbove ctermbg=NONE ctermfg=$t_fgpale guibg=NONE guifg=$fgpale
"" Line number for when the 'relativenumber' option is set, below the cursor line.
" hi! LineNrBelow ctermbg=NONE ctermfg=$t_fgpale guibg=NONE guifg=$fgpale
"" Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
hi! CursorLineNr cterm=bold ctermbg=$t_bgselection ctermfg=$t_fgcomment gui=bold guibg=$bgselection guifg=$fgcomment
"" The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
hi! MatchParen ctermbg=$t_bgcyan guibg=$bgcyan
"" 'showmode' message (e.g., "-- INSERT --")
hi! ModeMsg cterm=NONE ctermfg=$t_green gui=NONE guifg=$green
"" Area for messages and cmdline
" hi! MsgArea
"" Separator for scrolled messages, `msgsep` flag of 'display'
" hi! MsgSeparator
"" |more-prompt|
hi! MoreMsg cterm=NONE ctermfg=$t_green gui=NONE guifg=$green
"" '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
hi! NonText ctermfg=$t_fgpale guifg=$fgpale
"" normal text
hi! Normal ctermbg=$t_bg ctermfg=$t_fg guibg=$bg guifg=$fg
"" Normal text in floating windows.
" hi! NormalFloat
"" normal text in non-current windows
" hi! NormalNC ctermbg=$t_bgfringe guibg=$bgfringe
"" Popup menu: normal item.
hi! Pmenu ctermbg=$t_bgselection ctermfg=$t_fg guibg=$bgselection guifg=$fg
"" Popup menu: selected item.
hi! PmenuSel ctermbg=$t_bgmagenta ctermfg=$t_absblack guibg=$bgmagenta guifg=$absblack
"" Popup menu: scrollbar.
hi! PmenuSbar ctermbg=$t_fginactive guibg=$fginactive
"" Popup menu: Thumb of the scrollbar.
hi! PmenuThumb ctermbg=$t_red guibg=$red
"" |hit-enter| prompt and yes/no questions
hi! Question ctermfg=$t_green guifg=$green
"" Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
hi! QuickFixLine ctermbg=$t_bgselection guibg=$bgselection
"" Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
hi! Search ctermbg=$t_bgpurple guibg=$bgpurple
"" Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
hi! SpecialKey ctermfg=$t_fgpale guifg=$fgpale
"" Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
hi! SpellBad cterm=undercurl gui=undercurl guisp=$red
"" Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
hi! SpellCap cterm=undercurl gui=undercurl guisp=$blue
"" Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
hi! SpellLocal cterm=undercurl gui=undercurl guisp=$green
"" Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
hi! SpellRare cterm=undercurl gui=undercurl guisp=$purple
"" status line of current window
hi! StatusLine cterm=NONE ctermbg=$t_bgmodeline ctermfg=$t_fg gui=NONE guibg=$bgmodeline guifg=$fg
"" status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
hi! StatusLineNC cterm=NONE ctermbg=$t_bgbase ctermfg=$t_fgcomment gui=NONE guibg=$bgbase guifg=$fgcomment
"" tab pages line, not active tab page label
hi! TabLine cterm=NONE ctermbg=$t_bgbase ctermfg=$t_fgcomment gui=NONE guibg=$bgbase guifg=$fgcomment
"" tab pages line, where there are no labels
hi! TabLineFill cterm=NONE ctermbg=$t_bgbase ctermfg=NONE gui=NONE guibg=$bgbase guifg=NONE
"" tab pages line, active tab page label
hi! TabLineSel cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
"" titles for output from ":set all", ":autocmd" etc.
hi! Title cterm=NONE ctermfg=$t_green gui=NONE guifg=$green
"" Visual mode selection
hi! Visual ctermbg=$t_bgselection guibg=$bgselection
"" Visual mode selection when vim is "Not Owning the Selection".
hi! VisualNOS ctermbg=$t_bgselection guibg=$bgselection
"" warning messages
hi! WarningMsg ctermbg=NONE ctermfg=$t_purple guibg=NONE guifg=$purple
"" "nbsp", "space", "tab" and "trail" in 'listchars'
hi! Whitespace ctermfg=$t_fgpale guifg=$fgpale
"" current match in 'wildmenu' completion
hi! WildMenu ctermbg=$t_bgmagenta ctermfg=$t_absblack guibg=$bgmagenta guifg=$absblack
"" -------------------------------------------------------------------
"" any comment
hi! Comment ctermfg=$t_fgcomment guifg=$fgcomment
"" any constant
hi! Constant ctermfg=$t_cyan guifg=$cyan
"" a string constant: "this is a string"
" hi! String
"" "a character constant: 'c', '\n'
" hi! Character
"" "a number constant: 234, 0xff
" hi! Number
"" "a boolean constant: TRUE, false
" hi! Boolean
"" "a floating point constant: 2.3e10
" hi! Float
"" any variable name
hi! Identifier ctermfg=$t_blue guifg=$blue
"" "function name (also: methods for classes)
" hi! Function
"" any statement
hi! Statement cterm=NONE ctermfg=$t_magenta gui=NONE guifg=$magenta
"" "if, then, else, endif, switch, etc.
" hi! Conditional
"" "for, do, while, etc.
" hi! Repeat
"" "case, default, etc.
" hi! Label
"" sizeof", "+", "*", etc.
" hi! Operator
"" "any other keyword
" hi! Keyword
"" "try, catch, throw
" hi! Exception
"" generic Preprocessor
hi! PreProc ctermfg=$t_green guifg=$green
"" "preprocessor #include
" hi! Include
"" "preprocessor #define
" hi! Define
"" "same as Define
" hi! Macro
"" "preprocessor #if, #else, #endif, etc.
" hi! PreCondit
"" int, long, char, etc.
hi! Type cterm=NONE ctermfg=$t_magenta gui=NONE guifg=$magenta
"" "static, register, volatile, etc.
" hi! StorageClass
"" "struct, union, enum, etc.
" hi! Structure
"" "A typedef
" hi! Typedef
"" any special symbol
hi! Special ctermfg=$t_purple guifg=$purple
"" "special character in a constant
" hi! SpecialChar
"" "you can use CTRL-] on this
" hi! Tag
"" "character that needs attention
" hi! Delimiter
hi! Delimiter ctermfg=$t_fg guifg=$fg
"" "special things inside a comment
" hi! SpecialComment
"" "debugging statements
" hi! Debug
"" text that stands out, HTML links
hi! Underlined cterm=underline ctermfg=$t_blue gui=underline guifg=$blue
"" left blank, hidden  |hl-Ignore|
hi! Ignore ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
"" any erroneous construct
hi! Error cterm=NONE ctermbg=NONE ctermfg=$t_red gui=NONE guibg=NONE guifg=$red
"" anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi! Todo cterm=NONE ctermbg=$t_bggreen ctermfg=$t_green gui=NONE guibg=$bggreen guifg=$green
"" -------------------------------------------------------------------
"" diff
hi! diffAdded ctermfg=$t_green guifg=$green
hi! diffRemoved ctermfg=$t_red guifg=$red

"" -------------------------------------------------------------------
"" terminal
if has('nvim')
  let g:terminal_color_0 = '$black'
  let g:terminal_color_1 = '$red'
  let g:terminal_color_2 = '$green'
  let g:terminal_color_3 = '$yellow'
  let g:terminal_color_4 = '$blue'
  let g:terminal_color_5 = '$magenta'
  let g:terminal_color_6 = '$cyan'
  let g:terminal_color_7 = '$white'
  let g:terminal_color_8 = '$brblack'
  let g:terminal_color_9 = '$brred'
  let g:terminal_color_10 = '$brgreen'
  let g:terminal_color_11 = '$bryellow'
  let g:terminal_color_12 = '$brblue'
  let g:terminal_color_13 = '$brmagenta'
  let g:terminal_color_14 = '$brcyan'
  let g:terminal_color_15 = '$brwhite'
else
  let g:terminal_ansi_colors = ['$black', '$red', '$green', '$yellow', '$blue', '$magenta', '$cyan', '$white', '$brblack', '$brred', '$brgreen', '$bryellow', '$brblue', '$brmagenta', '$brcyan', '$brwhite']
endif

"" -------------------------------------------------------------------
" hi! link TermCursor Cursor
" hi! link Substitute Search
" hi! link LineNrAbove LineNr
" hi! link LineNrBelow LineNr
"" vim
hi! link vimContinue Comment
"" [CtrlP](https://github.com/ctrlpvim/ctrlp.vim)
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Search
"" [vim-markdown](https://github.com/tpope/vim-markdown)
hi! link markdownBold Statement
hi! link markdownCode Special
hi! link markdownCodeDelimiter Special
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
