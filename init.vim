filetype plugin on
syntax on
set clipboard+=unnamedplus
set nocompatible
set number
set autochdir
set spell spelllang=en_us
set tabstop=4 shiftwidth=4 expandtab
color desert
nmap <C-j> :bp<CR>
nmap <C-k> :bn<CR>
tnoremap <C-[> <C-\><C-n>

call plug#begin('~/AppData/Local/nvim/plugged')
" call plug#begin('~/.config/nvim/plugged')
"
" Make sure you use single quotes
"
Plug 'tpope/vim-sensible'
Plug 'vimwiki/vimwiki'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'godlygeek/tabular'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
" Initialize plugin system
call plug#end()


" Plugin key-mappings.
" Nerdtree

map <C-n> :NERDTreeToggle<CR>

" Neosnippet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
