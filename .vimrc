set nocompatible " be iMproved, required
filetype off     " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

let g:ycm_confirm_extra_conf = 0 
Plugin 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdTree'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'flazz/vim-colorschemes'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()

" BEGIN Settings
filetype plugin indent on 

" Basic settings
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

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
