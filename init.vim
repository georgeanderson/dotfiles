filetype plugin on
syntax on
set clipboard+=unnamedplus
set nocompatible
set number
set autochdir
set spell spelllang=en_us
set tabstop=4 shiftwidth=4 expandtab
color darkblue
nmap <S-h> :bp<CR>
nmap <S-l> :bn<CR>
let g:python3_host_prog = '/Python37/python'

call plug#begin('~/AppData/Local/nvim/plugged')
"
" Make sure you use single quotes
"
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-sensible'
Plug 'godlygeek/tabular'
Plug 'itchyny/calendar.vim'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
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
