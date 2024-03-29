" Plugins
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'dockyard/vim-easydir'
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'machakann/vim-highlightedyank'
Plug 'mileszs/ack.vim'
Plug 'moll/vim-bbye'
Plug 'rizzatti/dash.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'zxqfl/tabnine-vim'
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
nnoremap <ESC> :noh<CR><ESC>|"                              Clear highlights
nmap <LEADER>l :set list!<CR>|"                             Toggle list characters (Invisibles)
map <LEADER>z :set spell!<CR>|"                             Toggle spell
map <LEADER>f :Ack!<Space>|"                                Search CWD
map <LEADER>F :Ack! <C-r><C-w><CR>|"                        Search CWD with word under cursor
map <LEADER>t :Files<CR>|"                                  fzf files
map <LEADER>b :Buffers<CR>|"                                fzf buffers
nnoremap ? :%s/\<<C-r><C-w>\>//g<Left><Left>|"              Replace in buffer with word under cursor
nnoremap <LEADER>? :cdo %s/\<<C-r><C-w>\>//g<Left><Left>|"  Replace CWD with word under cursor
map <C-w>w :Bwipeout<CR>|"                                  Close buffer and switch to alternate file
vmap gcb :TCommentBlock<CR>|"                               Create an empty, inline comment
nnoremap Q <nop>|"                                          Don't enter Ex mode
vmap <Enter> <Plug>(EasyAlign)|"                            EasyAlign
runtime macros/matchit.vim |"                               Match pairs of keywords (Eg: def, end)
noremap <LEADER>y "*y|"                                     Copy to system's clipboard
noremap <LEADER>p "*p|"                                     Paste from system's clipboard
nnoremap <LEADER><LEADER> <C-^>|"                           Alternate between buffers

" Window
set hidden             " Allow hiding buffers with unsaved changes
set number             " Show line numbers
set ruler              " Show cursor position
set spelllang=en_au    " Australian English
set switchbuf=useopen  " Don't re-open already opened buffers

" Persistent undo
set undofile                         " Save undo's after file closes
set undodir=~/.local/share/nvim/undo " Where to save histories
set undolevels=1000                  " How many undos
set undoreload=10000                 " Number of lines to save

" Color
set termguicolors
colorscheme dracula

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Speed
set ttyfast
set lazyredraw

" Save when focus is lost
autocmd BufLeave,FocusLost * silent! wall

" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

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
