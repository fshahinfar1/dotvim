" Vim syntax file
" Language: PRISM model
" Maintainer:
" Latest Revision:
"

if exists("b:current_syntx")
	finish
endif

" Keywords
syn keyword prismKeyword module endmodule init const endinit rewards endrewards formula clock invariant endinvariant label
syn keyword prismType int double bool nextgroup=prismVar skipwhite

" Matches
"
" Comments
syn match prismComment "//.*$"
syn match prismNumber " ( ^)[0-9]+( $)"
syn match prismRange "\[.*\.\..*\]"
syn match prismNextVar "[a-zA-Z][a-zA-Z0-9]*\'"
syn match prismLabel "\"[a-zA-Z0-9_-]*\""



let b:current_syntax = "prism"

" hi def link celTodo            Todo
hi def link prismComment         Comment
hi def link prismKeyword         Statement
hi def link prismType            Type
hi def link prismNumber          Number
" hi def prismRange guibg=yellow guifg=blue
hi def prismRange guifg=cyan
hi def prismNextVar guifg=magenta
hi def link prismLabel           String
" hi def link celString          Constant
" hi def link celDesc            PreProc
" hi def link syntaxElement2     Constant
