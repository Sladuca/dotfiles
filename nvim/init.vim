" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

" Initialize plugin system
call plug#end()

" set terminal to 256 color mode when using vim instead of neovim
set t_Co=256

" include other files
let g:config_file_list = ['globals.vim', 'ui.vim', 'keyboard.vim']
let g:nvim_config_root = expand('<sfile>:p:h')
for s:fname in g:config_file_list
  execute printf('source %s/include/%s', g:nvim_config_root, s:fname)
endfor
"}
