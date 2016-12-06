" :help [command] for more information 

" Visual Changes
syntax on     " Turn on syntax highlighting
set title
set ruler         " Shows file stats in bottom right corner
set visualbell    " Blink cursor on error instead of beeping 
set cursorline    " Highlights current line
set wildmenu      " Visual autocomplete for command menu

" Whitespace
set wrap          " Visually wraps long lines
set textwidth=80  " Max columns before wrap occurs 
set tabstop=4     " Number of spaces a tab counts for visually
set softtabstop=4 " Number of spaces a tab counts for when inserting/deleting
set expandtab     " Tabs are spaces

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
call plug#end()
set t_Co=256
colorscheme distinguished
