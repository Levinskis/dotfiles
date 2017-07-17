"Plugin manager stuff
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommnter'
Plug 'tomasr/molokai'

" Initialize plugin system
call plug#end()


"My stuff

set t_Co=256
colorscheme molokai

let g:molokai_original=1
"let g:rehash256=1

set relativenumber
set expandtab
set hlsearch
set incsearch
set tabstop=4

syntax on
filetype on
filetype plugin on
