" Shared vim configurations accross machines

call plug#begin('~/.vim/plugged')
Plug 'udalov/kotlin-vim'

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'

Plug 'jistr/vim-nerdtree-tabs'
Plug 'marcweber/vim-addon-mw-utils' " dependency for vim-snipmate
Plug 'tomtom/tlib_vim' " dependency for vim-snipmate
Plug 'garbas/vim-snipmate'
Plug 'ChrisZou/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'slashmili/alchemist.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  " use tab for completion
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
Plug 'roxma/nvim-yarp' " Required by deoplete
Plug 'roxma/vim-hug-neovim-rpc' " Required by deoplete

Plug 'kristijanhusak/vim-hybrid-material'
Plug 'rakr/vim-one'

Plug 'neomake/neomake'
  " Configure a nice credo setup, courtesy https://github.com/neomake/neomake/pull/300
  let g:neomake_elixir_enabled_makers = ['mix', 'mycredo']
  function! NeomakeCredoErrorType(entry)
    if a:entry.type ==# 'F'      " Refactoring opportunities
      let l:type = 'W'
    elseif a:entry.type ==# 'D'  " Software design suggestions
      let l:type = 'I'
    elseif a:entry.type ==# 'W'  " Warnings
      let l:type = 'W'
    elseif a:entry.type ==# 'R'  " Readability suggestions
      let l:type = 'I'
    elseif a:entry.type ==# 'C'  " Convention violation
      let l:type = 'W'
    else
      let l:type = 'M'           " Everything else is a message
    endif
    let a:entry.type = l:type
  endfunction

  let g:neomake_elixir_mycredo_maker = {
        \ 'exe': 'mix',
        \ 'args': ['credo', 'list', '%:p', '--format=oneline'],
        \ 'errorformat': '[%t] %. %f:%l:%c %m,[%t] %. %f:%l %m',
        \ 'postprocess': function('NeomakeCredoErrorType')
        \ }

"Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

"Auto close '"([{
Plug 'jiangmiao/auto-pairs'


"Auto close html tag
Plug 'alvan/vim-closetag'

Plug 'kana/vim-textobj-user'
Plug 'andyl/vim-textobj-elixir'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" Set the title of the iterm tab
set title
" Auto format elixir code
let g:mix_format_on_save = 1

runtime macros/matchit.vim

"jk to exit insert mode and save
imap jk <Esc><Esc>:w<cr>
"Use jk to save in normal mode
":nmap jk :w<cr> disable for quick j response in normal mode

"nt to toggle NERDTree window
nmap nt :NERDTree<cr>

"C-W to switch bewteen NERDTree window and the editor window
nmap <C-Q> <C-W><C-W>

"make vim colorful
filetype plugin indent on
syntax on

"Set tabstop to 2
set tabstop=2
"Replace tab with spaces
set expandtab
"Use 2 spaces for indention
set shiftwidth=2
set smartindent
"Use ' as : in normal mode
nmap ' :

"Immediately show search result, while typing
set incsearch
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch

"Show position in insert mode
set ruler

""Show line number
set number

set visualbell           " don't beep
set noerrorbells         " don't beep

"Set timeout for key mapping
set timeout timeoutlen=300 ttimeoutlen=100

"EasyMotion leader key
let g:EasyMotion_leader_key = '\'

"mapleader
let mapleader=","

"Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>
nmap nt :NERDTree<cr>

" fzf mappings
nmap <leader>f :GFiles<CR>
nmap <leader>b :Buffers<CR>

let g:alchemist_tag_map = 'gd'

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

imap <C-P> <up>
imap <C-N> <down>
imap <C-B> <left>
imap <C-F> <right>
imap <C-A> <esc>I
imap <C-E> <esc>A

"Open command t selection in new tab by default
"let g:CommandTAcceptSelectionMap = '<C-t>'
"let g:CommandTAcceptSelectionTabMap = '<CR>'

"Disable auto comment when pasting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"F2 to toggle paste/nopaste mode
set pastetoggle=<F2>

set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8

" Move cursor between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Switching buffers
nnoremap <silent> [b :bprevious<CR> 
nnoremap <silent> ]b :bnext<CR> 
nnoremap <silent> [B :bfirst<CR> 
nnoremap <silent> ]B :blast<CR>

" Switching buffers
nnoremap <silent> [a :previous<CR> 
nnoremap <silent> ]a :next<CR> 
nnoremap <silent> [A :first<CR> 
nnoremap <silent> ]A :last<CR>

" Switching buffers
nnoremap <silent> [c :cprevious<CR> 
nnoremap <silent> ]c :cnext<CR> 
nnoremap <silent> [C :cfirst<CR> 
nnoremap <silent> ]C :clast<CR>

" Switching tabs
nnoremap <silent> [t gT
nnoremap <silent> ]t gt

set background=dark
colorscheme one
let g:airline_theme='one'
if (has("termguicolors"))
    set termguicolors
endif

set t_Co=256

" Expand current file's dir
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

let g:airline#extensions#tabline#fnamemod = ':t'
" Source local vimrc file
if filereadable("~/.vimrc_local")
    source "~/.vimrc_local"
endif

autocmd! BufWritePost * Neomake
set path+=.
