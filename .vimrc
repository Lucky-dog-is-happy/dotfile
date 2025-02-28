
set nocompatible

set number

set relativenumber

set cursorline

set laststatus=2

syntax on

set wrap

set encoding=UTF-8

set showcmd

set wildmenu

set nohlsearch

set ignorecase

set smartcase

filetype on

filetype indent on

filetype plugin on

filetype plugin indent on

set mouse=a
" ban the title in teminal
let &t_ut=''

set expandtab

set tabstop=2

set shiftwidth=2

set softtabstop=2

set list

set listchars=tab:▸\ ,trail:▫

set scrolloff=7

set tw=0

set indentexpr=

set backspace=indent,eol,start

set foldmethod=indent

set foldlevel=99
"auto jump to the dir of the open file
set autochdir
"auto record the cursor location
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap U 5k
noremap D 5j
noremap <C-h> 0
noremap <C-l> $
map S :w<CR>
map Q :q<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'connorholyday/vim-snazzy'
call plug#end()
