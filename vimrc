" Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mileszs/ack.vim'
Bundle 'wincent/Command-T.git'
Bundle 'vim-scripts/upAndDown'

filetype plugin indent on

" Wildmenu
set wildmenu
set wildmode=longest,full 

" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results

" Whitespace
set nowrap        " Do not wrap lines
set expandtab     " Use spaces instead of tabs
set smarttab      " Be smart when using tabs ;-)
set softtabstop=2 " 1 tab is 2 spaces
set shiftwidth=2
set tabstop=2

" Disable backup. No swap files.
set nobackup
set nowb
set noswapfile

" Bindings
nnoremap <LEADER>n :n .<CR>             " Open the filer manager at the current working directory.
nnoremap <ESC> :noh<CR><ESC>            " Clear highlights
nmap <LEADER>l :set list!<CR>           " Toggle list characters (Invisibles)
nmap <SILENT> <LEADER>s :set spell!<CR> " Toggle spell
map <LEADER>f :Ack! 

" Window
syntax enable       " Syntax highlighting
set hidden          " Allow hiding buffers with unsaved changes
set number          " Show line numbers
set ruler           " Show cursor position
set spelllang=en_au " Australian English

" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " Where to save histories
set undolevels=1000         " How many undos
set undoreload=10000        " Number of lines to save

" File manager
let g:netrw_list_hide= '^\..*$' " Hide dotfiles 
let g:netrw_banner=0            " Disable banner
let g:netrw_liststyle=3         " Tree

" MacVim
if has("gui_running")
  set guifont=Monaco:h13
  set guioptions=-t " Hide toolbar
endif
