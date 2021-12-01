set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set expandtab
set number
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamedplus
syntax on

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" if you don't set this option, this color might not correct
"set termguicolors
"
"colorscheme horizon
"
" lightline
"let g:lightline = {}
"let g:lightline.colorscheme = 'horizon'

nnoremap <C-n> :NERDTreeToggle<CR>

" Ctrl+c で insert mode から抜けないように 
inoremap <C-c> <Nop>
" inoremap <C-j> <down>
" inoremap <C-k> <up>
" inoremap <C-h> <left>
" inoremap <C-l> <right>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

