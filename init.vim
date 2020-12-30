"set clipboard+=unnamedplus
set number
set autochdir
set tabstop=4 shiftwidth=4 expandtab
nmap <C-j> :bp<CR>
nmap <C-k> :bn<CR>
tnoremap <C-[> <C-\><C-n>
set splitbelow
set splitright

call plug#begin('C:\Users\george_anderson\AppData\Local\nvim\plugged')
" call plug#begin('~/.config/nvim/plugged')
"
" Make sure you use single quotes
"
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'dkarter/bullets.vim'
" Initialize plugin system
call plug#end()

" Monokai theme
colorscheme vim-monokai-tasty

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

