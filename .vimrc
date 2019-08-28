set nocompatible

call plug#begin()

" dev stuff
Plug 'janko/vim-test'
Plug 'davidhalter/jedi-vim'

if has('nvim')
  " python stuff
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-jedi'
  " latex stuff
  Plug 'donRaphaco/neotex'
  " dev
  let test#strategy = "neovim"
endif
let g:deoplete#enable_at_startup = 1

Plug 'dense-analysis/ale'

" latex
Plug 'lervag/vimtex'

" misc
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'

" style shiz
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()


" unnecessary in neovim
filetype plugin indent on
syntax on
syntax enable


" prettify
set termguicolors
colorscheme gruvbox
set background=dark
let g:gruvbox_invert_selection = 0
let g:airline_powerline_fonts = 1


" ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}

" vimwiki config
let g:vimwiki_list = [{'path': '~/dndwiki/', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/rhys_dnd/', 'syntax': 'markdown', 'ext': '.md'}]


" important editor stuff
set breakindent
set wrap
set backspace=indent,eol,start
set hidden
set tabstop=4
set shiftwidth=4
set expandtab

