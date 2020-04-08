
set nocompatible

call plug#begin()

" dev stuff
Plug 'janko/vim-test'

if has('nvim')
  " python stuff
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-jedi'
  " I'm not sure if i hate this
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  " latex stuff
  Plug 'donRaphaco/neotex'
  " dev
  let test#strategy = "neovim"
  let g:deoplete#enable_at_startup = 1
endif

Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'tmhedberg/SimpylFold'

" latex
Plug 'lervag/vimtex'

" misc
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'

" style shiz
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'

call plug#end()


" unnecessary in neovim
filetype plugin indent on
syntax on
syntax enable
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" prettify
set termguicolors
colorscheme gruvbox
set background=dark
let g:gruvbox_invert_selection = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
set colorcolumn=120
autocmd BufWritePre *.py :%s/\s\+$//e
if has('nvim')
  let g:semshi#simplify_markup = v:false
endif


" ale
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_linters = {'python': ['flake8']}

let g:jedi#completions_enabled = 0
" vimwiki config
let g:vimwiki_list = [{'path': '~/dndwiki/', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/rhys_dnd/', 'syntax': 'markdown', 'ext': '.md'}]

" latex
let g:vimtex_view_general_viewer = 'zathura'

" undo yay
set undodir=~/.vim/undo_dir
set undofile

" important editor stuff
set breakindent
set wrap
set backspace=indent,eol,start
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
set number
set nohlsearch
