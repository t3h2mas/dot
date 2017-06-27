set expandtab
set autoindent
set number
set nowrap
set shiftwidth=2
set tabstop=2
set backspace=eol,indent,start

" Last line
set showmode      " Displays what mode we're in along the bottom bar
set showcmd       " Shows command in bottom bar

" Searching
set incsearch     " Searches as characters are entered
set hlsearch      " Highlights matches
set ignorecase    " Ignores cases of characters to match
set showmatch     " Highlights matching [{()}]

" JK/KJ Escape Map
inoremap jk <Esc>
inoremap kj <Esc>

" upper HJKL
nnoremap H ^
nnoremap J 5j
nnoremap K 5k
nnoremap L g_

" vim-airline
set laststatus=2
" vim-airline themes
let g:airline_theme='bubblegum'
" vim-jsx don't require .jsx filename
let g:jsx_ext_required = 0

" nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'plasticboy/vim-markdown'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'lokaltog/vim-distinguished'
Plug 'mtth/scratch.vim'
call plug#end()

filetype plugin indent on
syntax on

set t_Co=256
colorscheme distinguished
