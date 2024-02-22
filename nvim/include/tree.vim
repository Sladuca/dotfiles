" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 82
"
" nnoremap <leader>tr :<CR>
"
" " Start netrw when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | :Vexplore | :vertical resize 35 | endif
"
" " open files vertically to the right
" augroup netrw_mappings
"     autocmd!
"     autocmd filetype netrw call Netrw_mappings()
" augroup END
" function! OpenToRight()
"   :rightbelow vnew
"   :wincmd p
"   :normal P
" endfunction
" function! Netrw_mappings()
"     noremap <buffer> V :call OpenToRight()<cr>
" endfunction
