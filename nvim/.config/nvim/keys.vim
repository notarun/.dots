"     __                         _
"    / /_____  __  ________   __(_)___ ___
"   / //_/ _ \/ / / / ___/ | / / / __ `__ \
"  / ,< /  __/ /_/ (__  )| |/ / / / / / / /
" /_/|_|\___/\__, /____(_)___/_/_/ /_/ /_/
"           /____/
"
"           CUSTOM KEYBINDINGS

let mapleader=" "

nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap vv v$h
inoremap jk <esc>
nnoremap Y <esc>v$y
nnoremap <cr> o<esc>
nnoremap <space><space> <esc>:nohlsearch<CR>

" ctrl-s to save
nnoremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>

" Buffers
nnoremap <leader>D <esc>:Bclose<CR>
nnoremap <c-n> <esc>:bnext<CR>
nnoremap <c-p> <esc>:bprevious<CR>

" Window
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" edit init.vim
nnoremap <leader>i <esc>:e $MYVIMRC<cr>
