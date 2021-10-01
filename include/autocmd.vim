"spell check markdown and git commits
augroup setSpelling
  autocmd!

  autocmd FileType gitcommit setlocal spell spelllang=en_us
  autocmd FileType markdown setlocal spell spelllang=en_us
augroup END
