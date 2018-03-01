"""""""""""""""""""""""""""""""""""""""""

" Vaisakh's  vimrc configurations

"""""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8

" Start Vundle Configurations

" Disable file type for vundle
filetype off                 " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/deoplete.nvim'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wincent/command-t'
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Quramy/tsuquyomi' 
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/vim-easy-align'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'tpope/vim-surround'
" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'crusoexia/vim-monokai'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'

" Html
Plugin 'othree/html5.vim'

" Css
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'


" Git
Plugin 'tpope/vim-fugitive'

"Generic Programming Support
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'Yggdroot/indentLine'
Plugin 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" End Vundle Configurations


"""""""""""""""""""""""""""""""""""""""""

" Configuration

"""""""""""""""""""""""""""""""""""""""""

" Theme
colorscheme monokai 

" Highlight current line
set cursorline

" Show line numbers
set number
set ruler

" Set Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Folding methods
set foldmethod=indent
set foldlevel=1
set foldclose=all

"""""""""""""""""""""""""""""""""""""""""
" Mapping configuration

"""""""""""""""""""""""""""""""""""""""""

let mapleader = ","
let g:notes_directories = ['~/Code/Notes']
let g:notes_suffix = '.md'

" NERDTree
let NERDTreeQuitOnOpen = 1
nnoremap <Leader>f :NERDTreeToggle  \| :NERDTreeFocus<cr>
nmap <Leader>bi :source ~/.vimrc<cr>:PluginInstall<cr>
nmap <F8> :TagbarToggle<CR>
map <Leader>ec :e ~/code/
map <Leader>eb :e ~/code/vp/api/
map <Leader>ef :e ~/code/vp/app/
map <Leader>cu :Tabularize /\|<CR>

"Goto file new split windo 
nnoremap gf <C-W>f
vnoremap gf <C-W>f
" Change between split windows
nnoremap ,, <C-w><C-w>
" Vertical split
nnoremap ,v <C-w>v
" Horizontal split
nnoremap ,h <C-w>s
" quit
nnoremap ,q :quit<CR>
" next tab
nnoremap ,n :bn<CR>
" previous/back tab
nnoremap ,p :bp<CR>
" close tab
nnoremap ,x :bd<CR>
" remap ESC key
" inoremap jj <ESC>
