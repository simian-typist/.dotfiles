source $VIMRUNTIME/defaults.vim

set nocompatible

filetype off

filetype plugin indent on

filetype plugin on

filetype indent on

set runtimepath+=~/.vim/bundle/nerdtree

let g:jedi#rename_command = "<C-t>"

let g:pymode_python = 'python3'
let g:pymode_syntax = 1
let g:pymode_rope = 0

set breakindent
set wrap
set backspace=indent,eol,start
set hidden

set tabstop=4
set shiftwidth=4
set expandtab

syntax enable
colorscheme edge
