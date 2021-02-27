set nocompatible
nmap <Space> <Leader>

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
  Plug 'kassio/neoterm'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  let test#strategy = "neovim"
  let g:deoplete#enable_at_startup = 1
endif

Plug 'sheerun/vim-polyglot'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'tmhedberg/SimpylFold'
Plug 'sirver/ultisnips'
Plug 'junegunn/goyo.vim'

" latex
Plug 'lervag/vimtex'

" misc
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'

" style shiz
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'

call plug#end()

" mappings
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <silent> <leader>o :NERDTreeToggle<Enter>
nnoremap <leader>l :NERDTreeFocus<CR>

" unnecessary in neovim
filetype plugin indent on
syntax on
syntax enable
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" nerdtree stuff
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | 
            \ quit | endif
" prettify
set termguicolors
colorscheme gruvbox
set background=dark
let g:gruvbox_invert_selection = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#ale#enabled = 1
let g:tex_flavor = 'latex'
set colorcolumn=120
if has('nvim')
  let g:semshi#simplify_markup = v:false
endif


" ale
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never'
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = { 'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8', 'yapf'] }

let g:jedi#completions_enabled = 0
" vimwiki config
let g:vimwiki_list = [{'path': '~/cvpr/', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/rhys_dnd/', 'syntax': 'markdown', 'ext': '.md'}]

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
