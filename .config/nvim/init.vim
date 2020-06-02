set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

let g:python3_host_prog = '/home/torch/.virtualenvs/pyneo/bin/python'
let g:loaded_python_provider = 1
