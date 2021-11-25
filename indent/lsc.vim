setlocal indentexpr=LscIndent()

function! LscIndent()
    let previousLine = getline(v:lnum - 1)

    if prevnonblank(v:lnum - 1) != v:lnum - 1
        return ""
    elseif previousLine =~ ":$"
        return indent(v:lnum - 1) + &tabstop
    else
        return indent(v:lnum - 1)
    endif
endfunction
