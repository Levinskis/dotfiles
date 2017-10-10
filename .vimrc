
source ./plugins.vim

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
set shiftwidth=4

syntax on
filetype on
filetype plugin on

set undodir=~/.vimbckp/.undo//

set backupdir=~/.vimbckp/.backup//

set directory=~/.vimbckp/.swp//
