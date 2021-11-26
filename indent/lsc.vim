" vim-lexurgy : vim support for the Lexurgy Sound Change Applier
" Copyright (C) 2021  Daman Morris <damanm72@gmail.com>

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
