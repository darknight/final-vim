set nocompatible               " turn off vi compatibility
syntax enable
syntax on

" configure vundle

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
filetype plugin indent on     " required!

" configure vundle completed

" a batch of set command

set autoindent
set autoread
set backspace=eol,start,indent
"set backupcopy=yes
set clipboard=unnamed
"set directory-=.
set encoding=utf-8
set ignorecase
set incsearch
set hlsearch                                 " highlight search result
set smartcase
set laststatus=2
set list
"set listchars=tab:▸\ ,trail:▫
set number
set ruler
set showcmd
set scrolloff=3
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set wildignore=*.o,*~,*.pyc,tmp/**
set wildmenu
set wildmode=longest,list,full
set mouse-=a                                  " disable mouse

set history=2000
"set cursorcolumn
"set cursorline
set novisualbell                              " no beep
set noerrorbells                              " no beep
set background=light

" end of set command

" solarized theme
colorscheme solarized

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"map <leader>l :Align
"nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
"nmap <leader>t :CtrlP<CR>
"nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
"nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
"nmap <leader>g :GitGutterToggle<CR>
"map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" F2 to turn on/off line number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" plugin settings
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

" rebalance windows
autocmd VimResized * :wincmd =

" use the silver searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
