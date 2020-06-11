let mapleader=' '
syntax on
set number
set relativenumber
set cursorline
set showcmd
set wildmenu 
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
colorscheme snazzy

set nocompatible
set encoding=utf-8

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set tw=0
set laststatus
set autochdir

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

noremap S :w<CR>
noremap R :source $VIMRC<CR>
map s <nop>
map tt :NERDTreeToggle<CR>
noremap Q :q<CR>
noremap N Nzz
noremap n nzz

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l 

map <UP> :res +5<CR>
map <DOWN> :res -5<CR>
map <LEFT> :vertical resize-5<CR>
map <RIGHT> :vertical resize+5<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>


map tu :tabe<CR>
map tn :+tabnext<CR>
map tp :-tabnext<CR>


" Quick Inser
map it :read !date<CR>


call plug#begin()

Plug 'vim-airline/vim-airline'

" File Tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" color scheme
Plug 'connorholyday/vim-snazzy'

" code complete
Plug 'Valloric/YouCompleteMe'

" code check
Plug 'w0rp/ale'

" function list
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" undo visualization
Plug 'mbbill/undotree/'

" focus model
Plug 'junegunn/goyo.vim'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug']}
Plug 'joker1007/vim-markdown-quote-syntax'

" complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" ==========undotree setting=============
map ut :UndotreeToggle<CR>
" change layout
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif


" ===========ale================
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" ===========goyo===============
map <LEADER>gy :Goyo<CR>
