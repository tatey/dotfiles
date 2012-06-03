" Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'wincent/Command-T'

filetype plugin indent on

" Wildmenu
set wildmenu
set wildmode=longest,full 

" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results

" Whitespace
set nowrap       " Do not wrap lines
set expandtab    " Use spaces instead of tabs
set smarttab     " Be smart when using tabs ;-)
set shiftwidth=2 " 1 tab is 2 spaces
set tabstop=2

" Disable backup. No swap files.
set nobackup
set nowb
set noswapfile

" File manager
let g:netrw_banner=0    " Disable banner
let g:netrw_liststyle=3 " Tree

" Bindings
nnoremap <LEADER>n :n .<CR>  " Open the filer manager at the current working directory.
nnoremap <ESC> :noh<CR><ESC> " Clear highlights

" Other
syntax enable " Syntax highlighting
set number    " Show line numbers
set ruler     " Show cursor position

" MacVim
if has("gui_running")
  set guifont=Monaco:h13
  set guioptions=-t " Hide toolbar
endif
