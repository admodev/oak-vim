if exists("b:current_syntax")
  finish
endif

" Comments
syntax match oakComment "#.*$"
highlight default link oakComment Comment

" String literals
syntax region oakString start=/"/ end=/"/ keepend
syntax match  oakEscape  /\\./ contained
highlight default link oakString  String
highlight default link oakEscape  SpecialChar

" Keywords
syntax keyword oakBegin   BEGIN
syntax keyword oakEnd     END
syntax keyword oakStart   start
syntax keyword oakIf      if
syntax keyword oakWhile   while
syntax keyword oakFor     for
syntax keyword oakRet     ret
syntax keyword oakPrint   print

" Highlight groups
highlight default link oakBegin  Keyword        " inherits from colorscheme
highlight default link oakEnd    Keyword
highlight default link oakStart  Keyword
highlight default link oakIf     Conditional
highlight default link oakWhile  Repeat
highlight default link oakFor    Repeat
highlight default link oakRet    Statement
highlight default link oakPrint  Function

let b:current_syntax = "oak"

