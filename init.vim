"set clipboard+=unnamedplus
set clipboard=unnamedplus
set number relativenumber
set mouse=a
set autochdir
set tabstop=4 shiftwidth=4 expandtab
nmap <C-j> :bp<CR>
nmap <C-k> :bn<CR>
tnoremap <C-[> <C-\><C-n>
set splitbelow
set splitright

" call plug#begin('C:\Users\george_anderson\AppData\Local\nvim\plugged')
call plug#begin('~/.config/nvim/plugged')
"
" Make sure you use single quotes
"
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'dkarter/bullets.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"
" Initialize plugin system
call plug#end()

" Monokai theme
"colorscheme vim-monokai-tasty
colorscheme gruvbox

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-l> :Lines<CR>

