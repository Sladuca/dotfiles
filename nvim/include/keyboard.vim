"colemak stuff

" left: colemak h / physical l
nnoremap h h
xnoremap h h
onoremap h h
vnoremap h h

" up: colemak l, physical l
nnoremap l k
xnoremap l k
onoremap l k
vnoremap l k

" down: colemak k, physcial n
nnoremap k j
xnoremap k j
onoremap k j
vnoremap k j

" right: colemak o, physcial ;
nnoremap o l
xnoremap o l
onoremap o l
vnoremap o l

" leader: SPACE
let mapleader=" "
nnoremap <SPACE> <Nop>

" easier split navigation: <leader><direction_key>
nnoremap <leader>k <C-W><C-J>
nnoremap <leader>l <C-W><C-K>
nnoremap <leader>o <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" switch to previous buffer
nnoremap <leader><leader> <C-^>
