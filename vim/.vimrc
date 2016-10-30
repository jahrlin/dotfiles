set nocompatible

" === General stuff ===
set history=500
set visualbell
set autoread "Reload files from outside changes
set backspace=eol,start,indent

" === Indentation ===
filetype plugin on
filetype indent on

set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·

set nowrap
set linebreak

" === Key mappings ===
let mapleader = ","
let g:mapleader = ","

" Fast save
nmap <leader>w :w!<cr>

" === Scrolling ===

set scrolloff=5

" Wildmenu helps
set wildmenu

" Always show ruler
set ruler

" Make backspace behave properly
set whichwrap+=<,>,h,l

" === Searching ===
set ignorecase
set smartcase
set hlsearch
set incsearch 

" === Syntastic settings ===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2 

" Syntax highlighting
syntax enable 
au bufNewFile,BufRead *.csx set filetype=cs
au bufNewFile,BufRead *.tag set filetype=html
let syntastic_mode_map = { 'passive_filetypes': ['html'] }

set number
set mouse=a

" No annoying swp files
set nobackup
set nowb
set noswapfile

" Linebreak on 500 characters
set lbr
set tw=500

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

if has("mac") || has("macunix")
    set gfn=Hack:h12,Source\ Code\ Pro\ for\ Powerline:h13,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

execute pathogen#infect()
colorscheme darcula
set cmdheight=2
let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0
let g:javascript_enable_domhtmlcss = 1

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Ugly hack to alias ag to Ack and set Ack to use ag, rofl
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

" <Ctrl-p> now starts CtrlP plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

