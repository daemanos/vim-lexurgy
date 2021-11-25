syntax keyword lscTodos TODO XXX FIXME NOTE

syntax keyword lscKeywords
    \ Class class
    \ Feature feature
    \ Diacritic diacritic
    \ Symbol symbol
    \ Syllables
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
syntax match lscFeatureVar "\v\$\w+"
syntax match declModifiers "\v\(([Ss]yllable|[Bb]efore|[Ff]irst|[Ff]loating)\)"


highlight default link lscTodos Todo
highlight default link lscKeywords Keyword
highlight default link lscNumber Number
highlight default link lscComment Comment
highlight default link lscClassref Identifier
highlight default link lscChangeRule Function
highlight default link lscFeatureVar Identifier
highlight default link declModifiers Type
