" === 基础设置 ===
set nocompatible
filetype plugin indent on
syntax on

" === 显示设置 ===
set number
set cursorline
set showmatch
set laststatus=2
set showcmd
set wildmenu

" === 缩进设置 ===
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" === 搜索设置 ===
set hlsearch
set incsearch
set ignorecase
set smartcase

" === 其他设置 ===
set mouse=a
set clipboard=unnamed
set encoding=utf-8
set termguicolors
set backspace=indent,eol,start
set scrolloff=5
set hidden

" === 快捷键 ==="
let mapleader=' '

nnoremap <Space> :nohlsearch<CR><CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

nnoremap <C-l> $
inoremap <C-l> <Esc>A
nnoremap <C-h> ^
inoremap <C-h> <Esc>I

" === 配色方案 ===
set background=dark
colorscheme desert
