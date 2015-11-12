" Shared vim configurations accross machines


" ======================================= Vundle =========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-ruby/vim-ruby'

Plugin 'MarcWeber/vim-addon-mw-utils' " dependency for vim-snipmate
Plugin 'tomtom/tlib_vim' " dependency for vim-snipmate
Plugin 'garbas/vim-snipmate'
Plugin 'ChrisZou/vim-snippets'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ======================================= Vundle End =========================================


"jk to exit insert mode and save
:imap jk <Esc><Esc>:w<cr>
"Use jk to save in normal mode

"nt to toggle NERDTree window
:nmap nt :NERDTree<cr>

"C-W to switch bewteen NERDTree window and the editor window
:nmap <C-Q> <C-W><C-W>

"make vim colorful
filetype plugin indent on
syntax on

"Set tabstop to 4
set tabstop=4
"Replace tab with spaces
set expandtab
"Use 4 spaces for indention
set shiftwidth=4
set smartindent
"Use ; as : in normal mode
:nmap ; :

"Immediately show search result, while typing
set incsearch
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch

"Show position in insert mode
set ruler

"Control+Command+[ to show previous tab and Control+Command+] to show next tab
:nmap <C-M-[> :tabp<cr>
:nmap <C-M-]> :tabn<cr>
nnoremap tt  :tabedit<Space>
nnoremap gn  :tabn<cr>
nnoremap gp  :tabp<cr>

"Set timeout for key mapping
set timeout timeoutlen=300 ttimeoutlen=1000

"EasyMotion leader key
let g:EasyMotion_leader_key = ','

"mapleader
let mapleader=","

"Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>
nmap nt :NERDTree<cr>

""Show line number
set number

set showmatch     "set show matching parenthesis

set visualbell           " don't beep
set noerrorbells         " don't beep

"Don't use backup files
set nobackup
set noswapfile

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Go to next line in long text
nnoremap j gj
nnoremap k gk

"when you forgot to sudo before editing a file that requires, This lets you use w!! to do that after you opened the file already
cmap w!! w !sudo tee % >/dev/null

:imap <C-P> <up>
:imap <C-N> <down>
:imap <C-B> <left>
:imap <C-F> <right>
:imap <C-A> <esc>I
:imap <C-E> <esc>A

"Open command t selection in new tab by default
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

"Disable auto comment when pasting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"F2 to toggle paste/nopaste mode
set pastetoggle=<F2>

set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8

"run ruby scrits
nmap <leader>r :w !ruby<cr>

" Ruby file indent 2 space
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Move cursor between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Switching tabs
nmap <C-1> 1gt
nmap <C-2> 2gt

" Source local vimrc file
if filereadable("~/.vimrc_local")
    source "~/.vimrc_local"
endif
