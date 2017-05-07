"Plugin manager stuff
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Initialize plugin system
call plug#end()


"My stuff


set relativenumber
set expandtab
set hlsearch
set incsearch
set tabstop=8
syntax on
