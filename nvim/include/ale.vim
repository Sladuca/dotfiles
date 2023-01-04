set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = ''
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'rust': ['rustfmt'],
    \ 'javascript': ['prettier'],
    \ 'typescript': ['prettier'],
    \ 'json': ['prettier'],
\}

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> <leader>d :ALEGoToDefinition<CR>
nmap <silent> <leader>r :ALEFindReferences<CR>

nmap <silent> <leader>el <Plug>(ale_previous_wrap)
nmap <silent> <leader>ek <Plug>(ale_next_wrap)
