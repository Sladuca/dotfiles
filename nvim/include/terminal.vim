" automatically close terminal when it exits
autocmd TermClose * execute 'close!'

function SplitAndTerm()
    :vsplit
    :term
endfunction

function HSplitAndTerm()
    :split
    :term
endfunction

nnoremap <C-t>t :call SplitAndTerm()<CR>
nnoremap <C-t>v :call HSplitAndTerm()<CR>
tnoremap <C-t> <C-\><C-n>

" vim-powered terminal in new tab
" map <Leader>T :tab term ++close<cr>
" tmap <Leader>T <c-w>:tab term ++close<cr>
