set nocompatible " be iMproved, required
filetype off     " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'alvan/vim-closetag'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

" BEGIN Settings
filetype plugin indent on 

" Basic settings
set encoding=utf-8
set nowrap
colorscheme jellybeans
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" NERDTree stuff
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$','\.swo$']
" NERTree tabs
let g:nerdtree_tabs_open_on_console_startup=1

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

" JSX
let g:jsx_ext_required = 0
autocmd BufNewFile,BufRead *.js set syntax=javascript.jsx
autocmd BufRead,BufNewFile *.jsx set syntax=javascript.jsx
autocmd BufRead,BufNewFile *.es6 set syntax=javascript.jsx

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Close Tag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx,*.es6"
