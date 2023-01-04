"spell check markdown and git commits
augroup setSpelling
    autocmd!

    autocmd FileType gitcommit setlocal spell spelllang=en_us
    autocmd FileType markdown setlocal spell spelllang=en_us
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
    autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2
    autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
    autocmd FileType json setlocal shiftwidth=2 tabstop=2
augroup END
