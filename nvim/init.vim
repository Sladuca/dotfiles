

" set terminal to 256 color mode when using vim instead of neovim
set t_Co=256

let g:nvim_config_root = expand('<sfile>:p:h')

" include pre-plugin files
let g:pre_plugin_config_file_list = ['keyboard.vim', 'ale.vim']
for s:fname in g:pre_plugin_config_file_list
    execute printf('source %s/include/%s', g:nvim_config_root, s:fname)
endfor

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'cespare/vim-toml'
Plug 'dense-analysis/ale'
Plug 'github/copilot.vim'
Plug 'xiyaowong/nvim-transparent'
Plug 'preservim/nerdcommenter'

" Initialize plugin system
call plug#end()

" include post-plugin files
let g:post_plugin_config_file_list = ['globals.vim', 'autocmd.vim', 'ui.vim', 'tree.vim', 'comments.vim', 'fzf.vim', 'terminal.vim']
for s:fname in g:post_plugin_config_file_list
    execute printf('source %s/include/%s', g:nvim_config_root, s:fname)
endfor
