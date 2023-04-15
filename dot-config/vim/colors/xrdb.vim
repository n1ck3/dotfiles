" Name: xrdb.vim
" Description: An attempt at a colorscheme that uses ~/.Xresources colors,
" defaults to a custom nord colorscheme. 

hi clear
set background=dark

if exists('syntax_on')
    syntax reset
endif

" Colorscheme name
let g:colors_name = 'xrdb'

" color variables {{{
" let s:xrdb0_gui = [ "#2e3440", 0 ] " nord0
" let s:xrdb1_gui = [ "#bf616a", 1 ] " nord11
" let s:xrdb2_gui = [ "#a3be8c", 2 ] " nord14
" let s:xrdb3_gui = [ "#ebcb8b", 3 ] " nord13
" let s:xrdb4_gui = [ "#81a1c1", 4 ] " nord9 <-> nord10 (?)
" let s:xrdb5_gui = [ "#b48ead", 5 ] " nord15
" let s:xrdb6_gui = [ "#88c0d0", 6 ] " nord8
" let s:xrdb7_gui = [ "#e5e9f0", 7 ] " nord4, nord5
" let s:xrdb8_gui = [ "#4c566a", 8 ] " nord3 (nord1,nord2)
" let s:xrdb8_gui_bright = [ "#4c566a", 8 ] " nord3 (nord1,nord2)
" let s:xrdb9_gui = [ "#bf616a", 9 ] " nord11
" let s:xrdb10_gui = [ "#a3be8c", 10 ] " nord14
" let s:xrdb11_gui = [ "#ebcb8b", 11 ] " nord13 (nord12???)
" let s:xrdb12_gui = [ "#81a1c1", 12 ] " nord10<-> nord9 (?)
" let s:xrdb13_gui = [ "#b48ead", 13 ] " nord15
" let s:xrdb14_gui = [ "#8fbcbb", 14 ] " nord7
" let s:xrdb15_gui = [ "#eceff4", 15 ] " nord6

let s:xrdb0_gui = "#2e3440" " nord0
let s:xrdb1_gui = "#bf616a" " nord11
let s:xrdb2_gui = "#a3be8c" " nord14
let s:xrdb3_gui = "#ebcb8b" " nord13
let s:xrdb4_gui = "#81a1c1" " nord9 <-> nord10 (?)
let s:xrdb5_gui = "#b48ead" " nord15
let s:xrdb6_gui = "#88c0d0" " nord8
let s:xrdb7_gui = "#e5e9f0" " nord4, nord5
let s:xrdb8_gui = "#4c566a" " nord3 (nord1,nord2)
let s:xrdb8_gui_bright = "#4c566a" " nord3 (nord1,nord2)
let s:xrdb9_gui = "#bf616a" " nord11
let s:xrdb10_gui = "#a3be8c" " nord14
let s:xrdb11_gui = "#ebcb8b" " nord13 (nord12???)
let s:xrdb12_gui = "#81a1c1" " nord10<-> nord9 (?)
let s:xrdb13_gui = "#b48ead" " nord15
let s:xrdb14_gui = "#8fbcbb" " nord7
let s:xrdb15_gui = "#eceff4" " nord6

let s:xrdb0_term = 0 " nord0
let s:xrdb1_term = 1 " nord11
let s:xrdb2_term = 2 " nord14
let s:xrdb3_term = 3 " nord13
let s:xrdb4_term = 4 " nord9 <-> nord10 (?)
let s:xrdb5_term = 5 " nord15
let s:xrdb6_term = 6 " nord8
let s:xrdb7_term = 7 " nord4, nord5
let s:xrdb8_term = 8 " nord3 (nord1,nord2)
let s:xrdb9_term = 9 " nord11
let s:xrdb10_term = 10 " nord14
let s:xrdb11_term = 11 " nord13 (nord12???)
let s:xrdb12_term = 12 " nord10<-> nord9 (?)
let s:xrdb13_term = 13 " nord15
let s:xrdb14_term = 14 " nord7
let s:xrdb15_term = 15 " nord6


" " NORD-COLORS
" let s:nord0_gui = "#2E3440" " 0
" let s:nord1_gui = "#3B4252" " 0
" let s:nord2_gui = "#434C5E" " 8
" let s:nord3_gui = "#4C566A" " 8
" let s:nord3_gui_bright = "#616E88"
" let s:nord4_gui = "#D8DEE9" " 7
" let s:nord5_gui = "#E5E9F0" " 15
" let s:nord6_gui = "#ECEFF4" " 15
" let s:nord7_gui = "#8FBCBB" " 14
" let s:nord8_gui = "#88C0D0" " 6
" let s:nord9_gui = "#81A1C1" " 4
" let s:nord10_gui = "#5E81AC" " 12
" let s:nord11_gui = "#BF616A" " 1
" let s:nord12_gui = "#D08770" " 11
" let s:nord13_gui = "#EBCB8B" " 3
" let s:nord14_gui = "#A3BE8C" " 2
" let s:nord15_gui = "#B48EAD" " 5

" Color variables }}}

" NORD {{{

" let g:nord_bold = get(g:, "nord_bold", 1)
" let s:bold = (g:nord_bold == 0) ? "" : "bold,"
let s:bold = "bold,"

" let g:nord_underline = get(g:, "nord_underline", 1)
" let s:underline = (g:nord_underline == 0) ? "NONE," : "underline,"
let s:underline = "underline,"

" let g:nord_italic = get(g:, "nord_italic", (has("gui_running") || $TERM_ITALICS == "true"))
" let s:italic = (g:nord_italic == 0) ? "" : "italic,"
let s:italic = "italic,"

" let g:nord_italic_comments = get(g:, "nord_italic_comments", 0)
" let s:italicize_comments = (g:nord_italic_comments == 0) ? "" : get(s:, "italic")
let s:italicize_comments = get(s:, "italic")

" let g:nord_uniform_status_lines = get(g:, "nord_uniform_status_lines", 0)
let g:nord_uniform_status_lines = 0

" let g:nord_bold_vertical_split_line = get(g:, "nord_bold_vertical_split_line", 0)
let g:nord_bold_vertical_split_line = 0

" let g:nord_cursor_line_number_background = get(g:, "nord_cursor_line_number_background", 0)
let g:nord_cursor_line_number_background = 0

" let g:nord_uniform_diff_background = get(g:, "nord_uniform_diff_background", 0)
let g:nord_uniform_diff_background = 0

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:xrdb0_gui, "NONE", s:xrdb0_term, "", "")
call s:hi("Cursor", s:xrdb0_gui, s:xrdb7_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
call s:hi("Error", s:xrdb7_gui, s:xrdb1_gui, "", s:xrdb1_term, "", "")
call s:hi("iCursor", s:xrdb0_gui, s:xrdb7_gui, "", "NONE", "", "")
call s:hi("LineNr", s:xrdb8_gui, "NONE", s:xrdb8_term, "NONE", "", "")
call s:hi("MatchParen", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "", "")
call s:hi("NonText", s:xrdb8_gui, "", s:xrdb8_term, "", "", "")
call s:hi("Normal", s:xrdb7_gui, s:xrdb0_gui, "NONE", "NONE", "", "")
call s:hi("Pmenu", s:xrdb7_gui, s:xrdb8_gui, "NONE", s:xrdb0_term, "NONE", "")
call s:hi("PmenuSbar", s:xrdb7_gui, s:xrdb8_gui, "NONE", s:xrdb0_term, "", "")
call s:hi("PmenuSel", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "", "")
call s:hi("PmenuThumb", s:xrdb6_gui, s:xrdb8_gui, "NONE", s:xrdb8_term, "", "")
call s:hi("SpecialKey", s:xrdb8_gui, "", s:xrdb8_term, "", "", "")
call s:hi("SpellBad", s:xrdb1_gui, s:xrdb0_gui, s:xrdb1_term, "NONE", "undercurl", s:xrdb1_gui)
call s:hi("SpellCap", s:xrdb3_gui, s:xrdb0_gui, s:xrdb3_term, "NONE", "undercurl", s:xrdb3_gui)
call s:hi("SpellLocal", s:xrdb15_gui, s:xrdb0_gui, s:xrdb15_term, "NONE", "undercurl", s:xrdb15_gui)
call s:hi("SpellRare", s:xrdb15_gui, s:xrdb0_gui, s:xrdb15_term, "NONE", "undercurl", s:xrdb15_gui)
call s:hi("Visual", "", s:xrdb8_gui, "", s:xrdb0_term, "", "")
call s:hi("VisualNOS", "", s:xrdb8_gui, "", s:xrdb0_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [s:xrdb0_gui, s:xrdb1_gui, s:xrdb2_gui, s:xrdb3_gui, s:xrdb4_gui, s:xrdb5_gui, s:xrdb6_gui, s:xrdb15_gui, s:xrdb8_gui, s:xrdb1_gui, s:xrdb2_gui, s:xrdb3_gui, s:xrdb4_gui, s:xrdb5_gui, s:xrdb14_gui, s:xrdb15_gui]
endif

if has('nvim')
  "+- Neovim Terminal Colors -+
  let g:terminal_color_0 = s:xrdb0_gui
  let g:terminal_color_1 = s:xrdb1_gui
  let g:terminal_color_2 = s:xrdb2_gui
  let g:terminal_color_3 = s:xrdb3_gui
  let g:terminal_color_4 = s:xrdb4_gui
  let g:terminal_color_5 = s:xrdb5_gui
  let g:terminal_color_6 = s:xrdb6_gui
  let g:terminal_color_7 = s:xrdb15_gui
  let g:terminal_color_8 = s:xrdb8_gui
  let g:terminal_color_9 = s:xrdb1_gui
  let g:terminal_color_10 = s:xrdb2_gui
  let g:terminal_color_11 = s:xrdb3_gui
  let g:terminal_color_12 = s:xrdb4_gui
  let g:terminal_color_13 = s:xrdb5_gui
  let g:terminal_color_14 = s:xrdb14_gui
  let g:terminal_color_15 = s:xrdb15_gui

  "+- Neovim Support -+
  call s:hi("healthError", s:xrdb1_gui, s:xrdb0_gui, s:xrdb1_term, s:xrdb0_term, "", "")
  call s:hi("healthSuccess", s:xrdb2_gui, s:xrdb0_gui, s:xrdb2_term, s:xrdb0_term, "", "")
  call s:hi("healthWarning", s:xrdb3_gui, s:xrdb0_gui, s:xrdb3_term, s:xrdb0_term, "", "")
  call s:hi("TermCursorNC", "", s:xrdb0_gui, "", s:xrdb0_term, "", "")

  "+- Neovim Diagnostics API -+
  call s:hi("DiagnosticWarn", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
  call s:hi("DiagnosticError" , s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
  call s:hi("DiagnosticInfo" , s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
  call s:hi("DiagnosticHint" , s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
  call s:hi("DiagnosticUnderlineWarn" , s:xrdb3_gui, "", s:xrdb3_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineError" , s:xrdb1_gui, "", s:xrdb1_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineInfo" , s:xrdb6_gui, "", s:xrdb6_term, "", "undercurl", "")
  call s:hi("DiagnosticUnderlineHint" , s:xrdb12_gui, "", s:xrdb12_term, "", "undercurl", "")

  "+- Neovim DocumentHighlight -+
  call s:hi("LspReferenceText", "", s:xrdb8_gui, "", s:xrdb8_term, "", "")
  call s:hi("LspReferenceRead", "", s:xrdb8_gui, "", s:xrdb8_term, "", "")
  call s:hi("LspReferenceWrite", "", s:xrdb8_gui, "", s:xrdb8_term, "", "")

  "+- Neovim LspSignatureHelp -+
  call s:hi("LspSignatureActiveParameter", s:xrdb6_gui, "", s:xrdb6_term, "", s:underline, "")
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:xrdb0_gui, "NONE", s:xrdb0_term, "", "")
if g:nord_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:xrdb7_gui, "", "NONE", "", "NONE", "")
else
  call s:hi("CursorLineNr", s:xrdb7_gui, s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
endif
call s:hi("Folded", s:xrdb8_gui, s:xrdb0_gui, s:xrdb8_term, s:xrdb0_term, s:bold, "")
call s:hi("FoldColumn", s:xrdb8_gui, s:xrdb0_gui, s:xrdb8_term, "NONE", "", "")
call s:hi("SignColumn", s:xrdb0_gui, s:xrdb0_gui, s:xrdb0_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:xrdb6_gui, "", s:xrdb6_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:xrdb0_gui, "", s:xrdb0_term, "NONE", "", "")
call s:hi("ErrorMsg", s:xrdb7_gui, s:xrdb1_gui, "NONE", s:xrdb1_term, "", "")
call s:hi("ModeMsg", s:xrdb7_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("Question", s:xrdb7_gui, "", "NONE", "", "", "")
if g:nord_uniform_status_lines == 0
  call s:hi("StatusLine", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "NONE", "")
  call s:hi("StatusLineNC", s:xrdb7_gui, s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
  call s:hi("StatusLineTerm", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:xrdb7_gui, s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
else
  call s:hi("StatusLine", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "NONE", "")
  call s:hi("StatusLineNC", s:xrdb7_gui, s:xrdb8_gui, "NONE", s:xrdb8_term, "NONE", "")
  call s:hi("StatusLineTerm", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:xrdb7_gui, s:xrdb8_gui, "NONE", s:xrdb8_term, "NONE", "")
endif
call s:hi("WarningMsg", s:xrdb0_gui, s:xrdb3_gui, s:xrdb0_term, s:xrdb3_term, "", "")
call s:hi("WildMenu", s:xrdb6_gui, s:xrdb0_gui, s:xrdb6_term, s:xrdb0_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:xrdb15_gui, s:xrdb12_gui, s:xrdb15_term, s:xrdb12_term, s:underline, "")
call s:hi("Search", s:xrdb0_gui, s:xrdb6_gui, s:xrdb0_term, s:xrdb6_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:xrdb7_gui, s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
call s:hi("TabLineFill", s:xrdb7_gui, s:xrdb0_gui, "NONE", s:xrdb0_term, "NONE", "")
call s:hi("TabLineSel", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:xrdb7_gui, "", "NONE", "", "NONE", "")

if g:nord_bold_vertical_split_line == 0
  call s:hi("VertSplit", s:xrdb8_gui, s:xrdb0_gui, s:xrdb8_term, "NONE", "NONE", "")
else
  call s:hi("VertSplit", s:xrdb8_gui, s:xrdb0_gui, s:xrdb8_term, s:xrdb0_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Character", s:xrdb2_gui, "", s:xrdb2_term, "", "", "")
call s:hi("Comment", s:xrdb8_gui_bright, "", s:xrdb8_term, "", s:italicize_comments, "")
call s:hi("Conceal", "", "NONE", "", "NONE", "", "")
call s:hi("Conditional", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Constant", s:xrdb7_gui, "", "NONE", "", "", "")
call s:hi("Decorator", s:xrdb11_gui, "", s:xrdb11_term, "", "", "")
call s:hi("Define", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Delimiter", s:xrdb15_gui, "", s:xrdb15_term, "", "", "")
call s:hi("Exception", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Float", s:xrdb5_gui, "", s:xrdb5_term, "", "", "")
call s:hi("Function", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("Identifier", s:xrdb7_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Keyword", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Label", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Number", s:xrdb5_gui, "", s:xrdb5_term, "", "", "")
call s:hi("Operator", s:xrdb4_gui, "", s:xrdb4_term, "", "NONE", "")
call s:hi("PreProc", s:xrdb4_gui, "", s:xrdb4_term, "", "NONE", "")
call s:hi("Repeat", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Special", s:xrdb7_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("SpecialComment", s:xrdb6_gui, "", s:xrdb6_term, "", s:italicize_comments, "")
call s:hi("Statement", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("StorageClass", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("String", s:xrdb2_gui, "", s:xrdb2_term, "", "", "")
call s:hi("Structure", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("Tag", s:xrdb7_gui, "", "", "", "", "")
call s:hi("Todo", s:xrdb3_gui, "NONE", s:xrdb3_term, "NONE", "", "")
call s:hi("Type", s:xrdb4_gui, "", s:xrdb4_term, "", "NONE", "")
call s:hi("Typedef", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
hi! link Annotation Decorator
hi! link Macro Define
hi! link PreCondit PreProc
hi! link Variable Identifier

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("asciidocAttributeList", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("asciidocAttributeRef", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("asciidocHLabel", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("asciidocListingBlock", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("asciidocMacroAttributes", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("asciidocOneLineTitle", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("asciidocPassthroughBlock", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
call s:hi("asciidocQuotedMonospaced", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("awkPatterns", s:xrdb4_gui, "", s:xrdb4_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit
hi! link cConstant Type

call s:hi("cmakeGeneratorExpression", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("cssDefinition", s:xrdb14_gui, "", s:xrdb14_term, "", "NONE", "")
call s:hi("cssIdentifier", s:xrdb14_gui, "", s:xrdb14_term, "", s:underline, "")
call s:hi("cssStringQ", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("dtExecKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("dtLocaleKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("dtNumericKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("dtTypeKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:nord_uniform_diff_background == 0
  call s:hi("DiffAdd", s:xrdb2_gui, s:xrdb0_gui, s:xrdb2_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:xrdb3_gui, s:xrdb0_gui, s:xrdb3_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:xrdb1_gui, s:xrdb0_gui, s:xrdb1_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:xrdb4_gui, s:xrdb0_gui, s:xrdb4_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:xrdb2_gui, s:xrdb0_gui, s:xrdb2_term, s:xrdb0_term, "", "")
  call s:hi("DiffChange", s:xrdb3_gui, s:xrdb0_gui, s:xrdb3_term, s:xrdb0_term, "", "")
  call s:hi("DiffDelete", s:xrdb1_gui, s:xrdb0_gui, s:xrdb1_term, s:xrdb0_term, "", "")
  call s:hi("DiffText", s:xrdb4_gui, s:xrdb0_gui, s:xrdb4_term, s:xrdb0_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")

call s:hi("goBuiltins", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:xrdb8_gui, "", s:xrdb8_term, "", "", "")
call s:hi("helpHyperTextJump", s:xrdb6_gui, "", s:xrdb6_term, "", s:underline, "")

call s:hi("htmlArg", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("htmlLink", s:xrdb7_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")

call s:hi("lessClass", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownCode", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownFootnote", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownId", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownIdDeclaration", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("markdownH1", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("markdownLinkText", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("markdownUrl", s:xrdb7_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")

call s:hi("phpClasses", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("phpDocTags", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("podVerbatimLine", s:xrdb7_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("rubySymbol", s:xrdb15_gui, "", s:xrdb15_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("rustEnum", s:xrdb14_gui, "", s:xrdb14_term, "", s:bold, "")
call s:hi("rustMacro", s:xrdb6_gui, "", s:xrdb6_term, "", s:bold, "")
call s:hi("rustModPath", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("rustPanic", s:xrdb4_gui, "", s:xrdb4_term, "", s:bold, "")
call s:hi("rustTrait", s:xrdb14_gui, "", s:xrdb14_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("sassId", s:xrdb14_gui, "", s:xrdb14_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("vimMapRhs", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("vimNotation", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("xmlCdataStart", s:xrdb8_gui_bright, "", s:xrdb8_term, "", s:bold, "")
call s:hi("xmlNamespace", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("ALEErrorSign" , s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("ALEWarning" , s:xrdb3_gui, "", s:xrdb3_term, "", "undercurl", "")
call s:hi("ALEError" , s:xrdb1_gui, "", s:xrdb1_term, "", "undercurl", "")

" Coc
" > neoclide/coc.vim
call s:hi("CocWarningHighlight" , s:xrdb3_gui, "", s:xrdb3_term, "", "undercurl", "")
call s:hi("CocErrorHighlight" , s:xrdb1_gui, "", s:xrdb1_term, "", "undercurl", "")
call s:hi("CocWarningSign", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("CocErrorSign" , s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("CocInfoSign" , s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("CocHintSign" , s:xrdb12_gui, "", s:xrdb12_term, "", "", "")

if has('nvim')
  " Neovim LSP
  " > neovim/nvim-lspconfig
  call s:hi("LspCodeLens", s:xrdb8_gui_bright, "", s:xrdb8_term, "", "", "")
  if has("nvim-0.5")
    call s:hi("LspDiagnosticsDefaultWarning", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultError" , s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultInformation" , s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
    call s:hi("LspDiagnosticsDefaultHint" , s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
    call s:hi("LspDiagnosticsUnderlineWarning" , s:xrdb3_gui, "", s:xrdb3_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineError" , s:xrdb1_gui, "", s:xrdb1_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineInformation" , s:xrdb6_gui, "", s:xrdb6_term, "", "undercurl", "")
    call s:hi("LspDiagnosticsUnderlineHint" , s:xrdb12_gui, "", s:xrdb12_term, "", "undercurl", "")
  endif
  
  " Gitsigns
  " > lewis6991/gitsigns.nvim
  hi! link GitSignsCurrentLineBlame Comment
endif

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:xrdb2_gui, "", s:xrdb2_term, "", "", "")
call s:hi("GitGutterChange", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("GitGutterDelete", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:xrdb2_gui, "", s:xrdb2_term, "", "", "")
call s:hi("SignifySignChange", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("SignifySignDelete", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")

" Sneak
" > justinmk/vim-sneak
hi! link Sneak Search

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:xrdb1_gui, "", s:xrdb1_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:xrdb2_gui, "", s:xrdb2_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:xrdb7_gui, s:xrdb8_gui, "", s:xrdb8_term, "", "")
call s:hi("jediFat", s:xrdb6_gui, s:xrdb8_gui, s:xrdb6_term, s:xrdb8_term, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:hi("ClapDir", s:xrdb7_gui, "", "", "", "", "")
call s:hi("ClapDisplay", s:xrdb7_gui, s:xrdb0_gui, "", s:xrdb0_term, "", "")
call s:hi("ClapFile", s:xrdb7_gui, "", "", "NONE", "", "")
call s:hi("ClapMatches", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("ClapNoMatchesFound", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
call s:hi("ClapSelected", s:xrdb14_gui, "", s:xrdb14_term, "", s:bold, "")
call s:hi("ClapSelectedSign", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
let s:clap_matches = [
        \ [s:xrdb6_gui,  s:xrdb6_term] ,
        \ [s:xrdb4_gui,  s:xrdb4_term] ,
        \ [s:xrdb12_gui, s:xrdb12_term] ,
        \ ]
for s:nord_clap_match_i in range(1,12)
  let clap_match_color = s:clap_matches[s:nord_clap_match_i % len(s:clap_matches) - 1]
  call s:hi("ClapMatches" . s:nord_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
  call s:hi("ClapFuzzyMatches" . s:nord_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
endfor
unlet s:nord_clap_match_i
hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-indent-guides
" > nathanaelkane/vim-indent-guides
call s:hi("IndentGuidesEven", "", s:xrdb0_gui, "", s:xrdb0_term, "", "")
call s:hi("IndentGuidesOdd", "", s:xrdb8_gui, "", s:xrdb8_term, "", "")

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:xrdb1_gui, "", "", s:xrdb1_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile", s:xrdb15_gui, "", s:xrdb15_term, "", "", "")
call s:hi("StartifyFooter", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("StartifyHeader", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("StartifyNumber", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("StartifyPath", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("haskellType", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:xrdb6_gui, "", s:xrdb6_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Pandoc
" > vim-pandoc/vim-pandoc-syntax
call s:hi("pandocDefinitionBlockTerm", s:xrdb14_gui, "", s:xrdb14_term, "", s:italic, "")
call s:hi("pandocTableDelims", s:xrdb8_gui, "", s:xrdb8_term, "", "", "")
hi! link pandocAtxHeader markdownH1
hi! link pandocBlockQuote markdownBlockquote
hi! link pandocCiteAnchor Operator
hi! link pandocCiteKey pandocReferenceLabel
hi! link pandocDefinitionBlockMark Operator
hi! link pandocEmphasis markdownItalic
hi! link pandocFootnoteID pandocReferenceLabel
hi! link pandocFootnoteIDHead markdownLinkDelimiter
hi! link pandocFootnoteIDTail pandocFootnoteIDHead
hi! link pandocGridTableDelims pandocTableDelims
hi! link pandocGridTableHeader pandocTableDelims
hi! link pandocOperator Operator
hi! link pandocPipeTableDelims pandocTableDelims
hi! link pandocReferenceDefinition pandocReferenceLabel
hi! link pandocReferenceLabel markdownLinkText
hi! link pandocReferenceURL markdownUrl
hi! link pandocSimpleTableHeader pandocAtxHeader
hi! link pandocStrong markdownBold
hi! link pandocTableHeaderWord pandocAtxHeader
hi! link pandocUListItemBullet Operator
  
if has('nvim')
  " tree-sitter
  " > nvim-treesitter/nvim-treesitter
  hi! link TSAnnotation Annotation
  hi! link TSConstBuiltin Constant
  hi! link TSConstructor Function
  hi! link TSEmphasis Italic
  hi! link TSFuncBuiltin Function
  hi! link TSFuncMacro Function
  hi! link TSStringRegex SpecialChar
  hi! link TSStrong Bold
  hi! link TSStructure Structure
  hi! link TSTagDelimiter TSTag
  hi! link TSUnderline Underline
  hi! link TSVariable Variable
  hi! link TSVariableBuiltin Keyword
endif

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:xrdb6_gui, "", s:xrdb6_term, "", s:italic, "")
call s:hi("typescriptClassName", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("typescriptDecorator", s:xrdb11_gui, "", s:xrdb11_term, "", "", "")
call s:hi("typescriptInterfaceName", s:xrdb14_gui, "", s:xrdb14_term, "", s:bold, "")
call s:hi("typescriptRegexpString", s:xrdb3_gui, "", s:xrdb3_term, "", "", "")
" TypeScript JSX
 call s:hi("tsxAttrib", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("mkdFootnote", s:xrdb6_gui, "", s:xrdb6_term, "", "", "")
call s:hi("mkdRule", s:xrdb12_gui, "", s:xrdb12_term, "", "", "")
call s:hi("mkdLineBreak", s:xrdb4_gui, "", s:xrdb4_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" PHP
" > StanAngeloff/php.vim
call s:hi("phpClass", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")
call s:hi("phpClassImplements", s:xrdb14_gui, "", s:xrdb14_term, "", s:bold, "")
hi! link phpClassExtends phpClass
hi! link phpFunction Function
hi! link phpMethod Function
hi! link phpUseClass phpClass

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:xrdb6_gui, "", s:xrdb6_term, "", s:bold, "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:xrdb14_gui, s:xrdb6_gui, s:xrdb4_gui, s:xrdb12_gui, s:xrdb2_gui, s:xrdb5_gui]
  let s:vimwiki_hcolor_ctermfg = [s:xrdb14_term, s:xrdb6_term, s:xrdb4_term, s:xrdb12_term, s:xrdb2_term, s:xrdb5_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold, "")
  endfor
endif
call s:hi("VimwikiLink", s:xrdb6_gui, "", s:xrdb6_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:xrdb14_gui, "", s:xrdb14_term, "", "", "")

"+------------+
"+ Public API +
"+------------+
"+--- Functions ---+

" function! NordPalette() abort
"   let ret = {}
"   for color in range(16)
"     execute 'let ret["nord'.color.'"] = s:nord'.color.'_gui'
"   endfor
"   let ret["nord3_bright"] = s:xrdb8_gui_bright
"   return ret
" endfunction
