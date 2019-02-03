" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dockyard/vim-easydir'
Plug 'junegunn/vim-easy-align'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'machakann/vim-highlightedyank'
Plug 'rizzatti/dash.vim'
Plug 'rking/ag.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
call plug#end()

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
map <LEADER>f :Ag<Space>|"                        Search
map <C-B> :CtrlPBuffer<CR>|"                      CtrlP in buffer mode
nnoremap Q <nop>|"                                Don't enter Ex mode
vmap <Enter> <Plug>(EasyAlign)|"                  EasyAlign
runtime macros/matchit.vim |"                     Match pairs of keywords (Eg: def, end)

" Window
set hidden             " Allow hiding buffers with unsaved changes
set number             " Show line numbers
set ruler              " Show cursor position
set spelllang=en_au    " Australian English
set switchbuf=useopen  " Don't re-open already opened buffers
set clipboard+=unnamed " Yanks go on clipboard instead

" Persistent undo
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " Where to save histories
set undolevels=1000         " How many undos
set undoreload=10000        " Number of lines to save

" CtrlP
let g:ctrlp_working_path_mode = 0 " Don't manage. Plays nicely with `bundle open <name>`
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|node_modules$\|logs$\|tmp$\|source_maps$\|vendor/gems$\|vendor/bundle$',
  \ 'file': '',
  \ 'link': '',
  \ }
let g:ctrlp_buffer_func = { 'enter': 'CtrlPEnter' }                   " Kill buffers in CtrlP with <C-@>
func! CtrlPEnter()                                                    " https://github.com/kien/ctrlp.vim/issues/280
  nnoremap <buffer> <silent> <C-@> :call <sid>CtrlPDeleteBuffer()<CR>
endfunc
func! s:CtrlPDeleteBuffer()
  exec "bd" fnamemodify(getline('.')[2:], ':p')
  exec "norm \<F5>"
endfunc

" Speed
set ttyfast
set lazyredraw

" Color scheme
colorscheme dracula

" Save when focus is lost
autocmd BufLeave,FocusLost * silent! wall

" Ruby/YAML, 2 spaces
autocmd BufRead,BufNewFile {*.prawn,Fastfile} set ft=ruby
autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber setlocal ai sw=2 sts=2 et

" Go
let g:go_disable_autoinstall = 1
autocmd FileType go setlocal nolist noet sw=4 sts=4 ts=4

" Make
autocmd FileType make setlocal noet

" Git
autocmd FileType gitcommit setlocal spell " Always turn on spell check
