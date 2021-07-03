"     _       _ __        _
"    (_)___  (_) /__   __(_)___ ___
"   / / __ \/ / __/ | / / / __ `__ \
"  / / / / / / /__| |/ / / / / / / /
" /_/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"

" external
source ~/.config/nvim/keys.vim    " keybindings
source ~/.config/nvim/utils.vim   " utility functions
source ~/.config/nvim/plugin.vim  " plugin configurations

" general
set hidden
set nobackup
set noswapfile
set nowritebackup
set mouse=a

" indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" searching
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" misc
set clipboard^=unnamed,unnamedplus  " use system clipboard
let loaded_netrwPlugin = 1          " disable netrw
set undofile                        " undo after file close
set completeopt-=preview            " hide preview window in completion mode

" ui
set number
set nowrap
set cursorline
set noshowmode
set scrolloff=10
set sidescroll=10
set termguicolors
set colorcolumn=82
set list listchars=tab:\ \ ,trail:~,nbsp:⋅
set background=light
" colorscheme cake16
colorscheme wombat

" no number when in terminal mode
autocmd TermOpen * setlocal nonumber

" per-project .nvimrc
set exrc
set secure
