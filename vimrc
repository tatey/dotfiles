" Vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bufkill.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'

filetype plugin indent on

runtime macros/matchit.vim " Match pairs of keywords (Eg: def, end)

" Wildmenu
set wildmenu
set wildmode=longest,full

" Search
set ignorecase " Case insensitive search
set incsearch  " Makes search act like search in modern browsers
set hlsearch   " Highlight search results

" Whitespace
set list                      " Show invisibles by default
set listchars=tab:▸\ ,trail:· " Show tabs, trailing whitespace and end of lines
set nowrap                    " Do not wrap lines
set expandtab                 " Use spaces instead of tabs
set smarttab                  " Be smart when using tabs ;-)
set softtabstop=2             " 1 tab is 2 spaces
set shiftwidth=2
set tabstop=2
set foldmethod=indent         " Fold based on indentation.
set foldlevelstart=99         " Expand all folds by default.

" Disable backup. No swap files.
set nobackup
set nowb
set noswapfile

" Bindings
nnoremap <ESC> :noh<CR><ESC>|"                    Clear highlights
nmap <LEADER>l :set list!<CR>|"                   Toggle list characters (Invisibles)
map <LEADER>s :set spell!<CR>|"                   Toggle spell
map <LEADER>f :Ack!<Space>|"                      Search
map <C-B> :CtrlPBuffer<CR>|"                      CtrlP in buffer mode

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

" NetRW
let g:netrw_list_hide= '^\..*$' " Hide dotfiles
let g:netrw_banner=0            " Disable banner
let g:netrw_liststyle=3         " Tree

" CtrlP
let g:ctrlp_buffer_func = { 'enter': 'CtrlPEnter' }                   " Kill buffers in CtrlP with <C-@>
func! CtrlPEnter()                                                    " https://github.com/kien/ctrlp.vim/issues/280
  nnoremap <buffer> <silent> <C-@> :call <sid>CtrlPDeleteBuffer()<CR>
endfunc
func! s:CtrlPDeleteBuffer()
  exec "bd" fnamemodify(getline('.')[2:], ':p')
  exec "norm \<F5>"
endfunc
