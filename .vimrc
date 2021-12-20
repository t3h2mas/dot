call plug#begin('~/.vim/plugged')

Plug 'sainnhe/sonokai'
Plug 'tpope/vim-endwise'
Plug 'dense-analysis/ale'
Plug 'ekalinin/Dockerfile.vim'
Plug 'jpalardy/vim-slime'
Plug 'christoomey/vim-tmux-navigator'
Plug 'thoughtbot/vim-rspec'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-ruby/vim-ruby'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'

call plug#end()

colorscheme gruvbox8_soft
set background=dark

inoremap jk <ESC>
inoremap kj <ESC>
map ; :

set number
syntax on
filetype on
filetype plugin on
filetype indent on

set spell spelllang=en_us


" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Vim SLIME
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

" FZF
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

" Ruby
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" RSPEC
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

