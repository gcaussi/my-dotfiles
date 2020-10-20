" --------------- Credits ---------------
" File:   init.vim
" Author: Gabriel Caussi
" Source: https://github.com/gcaussi/my-dotfiles/
"
" --------------- Vim-Plug ---------------

call plug#begin()
   
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'ryanoasis/vim-devicons'
    Plug 'yggdroot/indentline'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'jeffkreeftmeijer/vim-numbertoggle'
    Plug 'vim-scripts/AutoComplPop'
    Plug 'jiangmiao/auto-pairs'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'w0rp/ale'
    Plug 'ap/vim-css-color'

call plug#end()

" --------------- Basic Setup ---------------

syntax on                      " enable syntax highlighting

set nocompatible               " disables the original VI compatibility mode
set backspace=indent,eol,start " it just makes sure that the backspace can remove indation and stuff
set t_Co=256                   " 256 color terminals
set hidden                     " handle multiple buffers better
set confirm                    " confirmation menu when exiting without saving
set title                      " change the terminal title
set number                     " add the number of lines
set relativenumber             " add the relative number of lines
set mouse=a                    " allow use of mouse
set cursorline                 " creates a horizontal line on the line where the cursor is
set inccommand=split           " 
set clipboard=unnamedplus      " changes the clipboard mode
set laststatus=2               " always show the status bar (’cause I like to see the line and column, always)
set showtabline=2              " always show the tabline
set autoread                   " automatically reads modified files outside of neovim
set wildmenu                   " adds a menu for autocomplete in code mode
set wildmode=list:longest,full " adds a menu for autocomplete in code mode
set colorcolumn=80             " show vertical line at 80 chars
set scrolloff=5                " keep 5 lines visible above/below the cursor when scrolling
set showmatch                  " show matching bracket
set hlsearch                   " highlight matches
set incsearch                  " enable an incremental search
set ruler                      " show cursor line and column in status
set lazyredraw                 " streamlines some processes
set nowrap                     " displays long lines instead of breaking the line
set ignorecase                 " case-insensitive searching
set smartcase                  " but case-sensitive if expression contains a capital letter
set list                       " highlight unwanted spaces
set noequalalways              " resize windows as little as possible
set showcmd                    " show current command in status line
set splitbelow splitright      " put new windows below or to the right
set history=50                 " keep 50 lines of command line history

filetype indent on             " load indent settings based on file type
set encoding=UTF-8             " change the encoding to UTF-8
set autoindent                 " copy indent from previous line
set smartindent                " smart identation
set tabstop=2                  " show tabs as 2 spaces
set softtabstop=2              " number of spaces to use when inserting a tab
set shiftwidth=2               " number of spaces to use for indenting
set expandtab                  " convert tabs into spaces

" Swap configuration
set nobackup
set nowritebackup
set dir=~/.config/nvim/swap//,/tmp//,.

" --------------- Plugins Settings ---------------

" Theme and font
set background=dark
colorscheme gruvbox
set termguicolors
set guifont=Fira\ Code\ Nerd\ Font\ Regular:h12

" Indentline
let g:identLine_enabled=1
nnoremap <c-k> :IndentLinesToggle<CR>

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <c-b> <ESC>:NERDTreeToggle<CR>

" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

" Ctrlp.vim
let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

" NERDCommenter
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

" --------------- Keyboard Shortcuts ---------------

" Map leader key as space
let mapleader="\<space>"

" Space key shortcuts
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>; A;<ESC>

" Other shortcuts
nnoremap q :quit<CR>
nnoremap w :write<CR>
nnoremap <c-q> :q!<CR>
nnoremap <c-w> :wq<CR>
nnoremap <c-d> :PlugInstall<CR>

" Switch tabs (M = Alt on linux)
nnoremap <c-x> :bp\|bd #<CR>
nnoremap <M-l> :bn<CR>
nnoremap <M-h> :bp<CR>

" Disable arrows in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

