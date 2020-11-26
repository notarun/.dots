"            __            _             _
"     ____  / /_  ______ _(_)___  _   __(_)___ ___
"    / __ \/ / / / / __ `/ / __ \| | / / / __ `__ \
"   / /_/ / / /_/ / /_/ / / / / /| |/ / / / / / / /
"  / .___/_/\__,_/\__, /_/_/ /_(_)___/_/_/ /_/ /_/
" /_/            /____/
"
"              PLUGIN CONFIGURATIONS
"               powered by vim-plug

call plug#begin('~/.local/share/nvim/plugged')
    Plug 'mxw/vim-jsx'
    Plug 'zefei/cake16'
    Plug 'posva/vim-vue'
    Plug 'mattn/emmet-vim'
    Plug 'matze/vim-meson'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'dense-analysis/ale'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'jiangmiao/auto-pairs'
    Plug 'jwalton512/vim-blade'
    Plug 'itchyny/lightline.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'unblevable/quick-scope'
    Plug 'pangloss/vim-javascript'
    Plug 'itchyny/vim-highlighturl'
    Plug 'charmander/vim-razorleaf'
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'notarun/snipmate.vim'
call plug#end()

" emmet (mattn/emmet-vim)
let g:user_emmet_leader_key=','

" file explorer (preservim/nerdtree)
map <c-space> :NERDTreeToggle<cr>

" fuzzy finder (junegunn/fzf.vim)
map <leader>o :Files<cr>
map <leader>b :Buffers<cr>
map <leader>t :BTags<cr>

" styled hinting for 'f' (unblevable/quick-scope)
let g:qs_highlight_on_keys = ['f', 'F']

augroup qs_colors
    autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary guifg='#000' gui=underline
    autocmd ColorScheme * highlight QuickScopeSecondary guifg='#000' gui=none
augroup END

" statusline (itchyny/lightline.vim, mengelbrecht/lightline-bufferline)
set showtabline=2

let g:lightline = {
      \ 'colorscheme': 'OldHope',
      \ 'active': {
      \     'left': [['mode', 'paste'],
      \              ['gitbranch', 'readonly', 'filepath', 'modified']],
      \ },
      \ 'tabline': {
      \     'left': [['buffers']],
      \     'right': [['close']],
      \ },
      \ 'component_expand': {
      \     'buffers': 'lightline#bufferline#buffers',
      \ },
      \ 'component_type': {
      \     'buffers': 'tabsel'
      \ },
      \ 'component_function': {
      \     'filepath': 'RelativeFilePath',
      \     'gitbranch': 'FugitiveHead',
      \ },
      \ 'bufferline': {
      \     'show_number': 0,
      \     'shorten_path': 0,
      \     'filename_modifier': ':t',
      \ },
      \ }
