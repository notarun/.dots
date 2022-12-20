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
nnoremap <leader><leader> <esc>:nohlsearch<CR>

" ctrl-s to save
nnoremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>

" Buffers
nnoremap <leader>D <esc>:Bclose<CR>
nnoremap <c-n> <esc>:bnext<CR>
nnoremap <c-p> <esc>:bprevious<CR>

" Window
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" edit init.vim
nnoremap <leader>i <esc>:e $MYVIMRC<cr>

" RETURN key
"  - if current window is a `quick fix list` call `:.cc`
"  - else use `o` to add a new line
nnoremap <expr> <cr> CurrentWinIsQuickFix() ? ':.cc<cr>' : 'o<esc>'

" ale lsp features
nnoremap <silent> <M-d> :ALEGoToDefinition<cr>
nnoremap <silent> <M-r> :ALEFindReferences<cr>
nnoremap <silent> <M-h> :ALEHover<cr>
nnoremap <silent> <M-i> :ALEImport<cr>

" normal mode in terminal mode
tnoremap jk <C-\><C-n>

" keep the copied text in the register while pasting
xnoremap <leader>p "_dP

" copy file path
nnoremap <leader>f :let @+=expand("%")<cr>

" file explorer (preservim/nerdtree)
nnoremap <c-space> :NERDTreeToggle<cr>

" fuzzy finder (junegunn/fzf.vim)
nnoremap <leader>o :Files!<cr>
nnoremap <leader>g :GitFiles!<cr>
nnoremap <leader><tab> :Buffers!<cr>
nnoremap <leader>t :BTags!<cr>
nnoremap <leader>r :Rg!<cr>
