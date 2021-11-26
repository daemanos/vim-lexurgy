" vim-lexurgy : vim support for the Lexurgy Sound Change Applier
" Copyright (C) 2021  Daman Morris <damanm72@gmail.com>

syntax keyword lscTodos TODO XXX FIXME NOTE

syntax keyword lscKeywords
    \ Class class
    \ Feature feature
    \ Diacritic diacritic
    \ Symbol symbol
    \ explicit
    \ clear
    \ Then then
    \ Else else
    \ Propagate propagate
    \ LTR Ltr ltr
    \ RTL Rtl rtl
    \ Literal literal
    \ Unchanged unchanged


syntax match lscNumber "\v\d+"
syntax match lscName "\v\w+"
syntax match lscString "\V\(\(\\\\\.\)\|\[^ \\,.=>()*[\\]{}+?/\\-_:!~@#&\n\r\]\)\+"
syntax match lscComment "\v^\#.*"
syntax match lscClassref "\v\@\w+"
syntax match lscChangeRule "\v^\w+(-(\w+|\d+))*"
syntax match lscDeclModifiers "\v\(([Ss]yllable|[Bb]efore|[Ff]irst|[Ff]loating)\)"
syntax match lscSpecialChars "\v\zs(\$|\*)\ze([^\w]|$)"
syntax match lscFeatureVar "\v\$\w+"
syntax match lscSyl "\V<syl>"
syntax match lscSpecialRule "\v[Ss]yllables"


highlight default link lscTodos Todo
highlight default link lscKeywords Keyword
highlight default link lscNumber Number
highlight default link lscComment Comment
highlight default link lscClassref Type
highlight default link lscChangeRule Function
highlight default link lscFeatureVar Identifier
highlight default link lscDeclModifiers Type
highlight default link lscSpecialChars Special
highlight default link lscSyl Keyword
highlight default link lscSpecialRule Label
