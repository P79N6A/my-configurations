"---------BEGIN Setups for vundle-------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin nerdtree
Bundle 'https://github.com/scrooloose/nerdtree.git'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"---------END Setups for vundle-------------



"jk to exit insert mode and save
:imap jk <Esc>:w<cr>

"nt to toggle NERDTree window
:nmap nt :NERDTree<cr>
"C-W to switch bewteen NERDTree window and the editor window
:nmap <C-W> <C-W><C-W>
:imap <C-W> <Esc><C-W>

"make vim colorful
filetype plugin indent on
syntax on

"Set tabstop to 4
set tabstop=4
"Replace tab with spaces
set expandtab
"Use 4 spaces for indention
set shiftwidth=4
