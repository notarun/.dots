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
    Plug 'mattn/emmet-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vim-test/vim-test'
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'lambdalisue/suda.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'itchyny/lightline.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'unblevable/quick-scope'
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'lukas-reineke/indent-blankline.nvim', { 'for': 'yaml' }
    Plug 'notarun/snipmate.vim'
    Plug 'morhetz/gruvbox'
    Plug 'rmagatti/auto-session'

    Plug 'itchyny/vim-highlighturl'
    Plug 'pangloss/vim-javascript'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'tikhomirov/vim-glsl'
    Plug 'posva/vim-vue'
    Plug 'isobit/vim-caddyfile'
    Plug 'hashivim/vim-terraform'
    Plug 'axvr/zepl.vim'

    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'dense-analysis/ale'
    Plug 'rhysd/vim-lsp-ale'
    Plug 'jiz4oh/vim-lspfuzzy'
call plug#end()

" emmet (mattn/emmet-vim)
let g:user_emmet_leader_key=','

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
\   'colorscheme': 'gruvbox',
\   'active': {
\       'left': [['mode', 'paste'],
\                ['gitbranch', 'readonly', 'filepath', 'modified']],
\   },
\   'tabline': {
\       'left': [['buffers']],
\       'right': [['close']],
\   },
\   'component_expand': {
\       'buffers': 'lightline#bufferline#buffers',
\   },
\   'component_type': {
\       'buffers': 'tabsel'
\   },
\   'component_function': {
\       'filepath': 'RelativeFilePath',
\       'gitbranch': 'FugitiveHead',
\   },
\   'bufferline': {
\       'show_number': 0,
\       'shorten_path': 0,
\       'filename_modifier': ':t',
\   },
\ }

" vim-lsp
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_document_highlight_enabled = 0
let g:lsp_fold_enabled = 0
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> ca :FzfLspCodeAction!<cr>
    nmap <buffer> gt :FzfLspTypeDefinition!<cr>
    nmap <buffer> gi :FzfLspImplementation!<cr>
    nmap <buffer> gr :FzfLspReferences!<cr>
    nmap <buffer> gd :FzfLspDefinition!<cr>
    nmap <buffer> gs :FzfLspDocumentSymbol!<cr>

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" ale (dense-analysis/ale)
let g:ale_virtualtext_cursor = 0
let g:ale_detail_to_floating_preview = 1
let g:ale_floating_window_border = [' ', ' ', ' ', ' ', ' ', ' ']
let g:ale_fixers =
  \ {'javascript': ['biome', 'eslint', 'prettier']
  \ , 'typescript': ['eslint', 'prettier']
  \ , 'go': ['gofumpt', 'goimports']
  \ , 'html': ['eslint', 'prettier']
  \ , 'vue': ['eslint', 'prettier']
  \ , 'python': ['ruff']}

let g:ale_linters =
  \ {'javascript': ['biome']
  \ , 'python': ['ruff']}

" suda (lambdalisue/suda.vim)
let g:suda_smart_edit = 1

" indent-blankline
let g:indent_blankline_filetype = ['yaml']

" vim-test/vim-test
let test#strategy = 'neovim'

" auto-session
lua require('auto-session').setup {}

" lsp-settings
let g:lsp_settings_filetype_vue = ['typescript-language-server', 'volar-server']

" fzf.vim
let g:fzf_preview_window = 'down:70%'
