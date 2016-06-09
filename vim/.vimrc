set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set leader to a better key
let mapleader = ","
let g:mapleader = ","

" Fast save
nmap <leader>w :w!<cr>

" Scroll offset to 5 lines
set so=5

" Wildmenu helps
set wildmenu

" Always show ruler
set ruler

" Make backspace behave properly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)

set lazyredraw 

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2 

" Syntax highlighting
syntax enable 

set number
set mouse=a

" No annoying swp files
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

