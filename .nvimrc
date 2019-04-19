set title
set background=dark
" set t_Co=256

syntax on
colorscheme onedark

"Scroll horizontally by 1 character instead of default half screen
set sidescroll=1
"Always show at least 1 line above/below the cursor while scrolling
set scrolloff=1

"Move vertically by rows rather than lines (useful with long lines + wrap on)
nnoremap j gj
nnoremap k gk

nnoremap <C-S-d> yyp
nnoremap <CR> :noh<CR><CR>

nmap <C-k> ddkP
nmap <C-j> ddp

nmap <S-f> :Neoformat<CR>
vmap <S-t> :Tabularize /

"Mouse support
set mouse=a

"Show absolute line number directly to the left of current cursor's position and relative numbers elsewhere (awesome!)
set number

set linebreak
set nowrap
set showbreak=▶
set textwidth=120
set noshowmatch

"No beep or flash
autocmd VimEnter * set vb t_vb=
set hidden
set sessionoptions=resize,winpos,winsize,buffers,tabpages,
set laststatus=2

"Disable swap files creation
set noswapfile

"Create new splits to the right/below of currently active instead of left/top
set splitright
set splitbelow

"Search:
"Highlight search matches
set hlsearch
set ignorecase
"Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase
"Search as you type
set incsearch

"Unified clipboard
if has('nvim')
  set clipboard+=unnamedplus
endif

"Indentantion:
"Copy indent from current line when starting a new line
set autoindent
"In insert mode, add spaces instead of tabs
set expandtab
"Default tab width
set shiftwidth=2
"Smart autoindenting when starting a new line
set smartindent
set smarttab
set softtabstop=2

"Ruler:
set ruler
set colorcolumn=120

"Undo history length
set undolevels=200
"Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show commands as they are entered
set showcmd

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Syntax:
Plug 'scrooloose/syntastic'
" Plug 'lifepillar/pgsql.vim'

"Fuzzy search:
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'JazzCore/ctrlp-cmatcher'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neoinclude.vim'
" Plug 'awetzel/elixir.nvim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" Plug 'fishbullet/deoplete-ruby'

"Comments:
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
Plug 'terryma/vim-expand-region'
Plug 'godlygeek/tabular'

"Ruby
"Plug 'tpope/vim-endwise'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-rails'
"Plug 'thoughtbot/vim-rspec'
"Yaml
Plug 'lmeijvogel/vim-yaml-helper'

"JS
"Plug 'othree/yajs.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'leshill/vim-json'

"HTML
Plug 'mattn/emmet-vim'

"Neovim only
Plug 'janko-m/vim-test'
Plug 'kassio/neoterm'
Plug 'benekastah/neomake'

"Markdown
Plug 'shime/vim-livedown'

"Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'vimwiki/vimwiki'

"Ember
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mustache/vim-mustache-handlebars'
Plug 'jiangmiao/auto-pairs'
Plug 'AndrewRadev/ember_tools.vim'
Plug 'sukima/vim-ember-imports'

"Linting
Plug 'sbdchd/neoformat'

"TypeScript
"Plug 'mhartington/nvim-typescript'
"Plug 'HerringtonDarkholme/yats.vim'

" Snipets
" Plug 'SirVer/ultisnips'

" Plug 'terryma/vim-multiple-cursors'

" Rust
Plug 'rust-lang/rust.vim'

" Bookmarks
" Plug 'MattesGroeger/vim-bookmarks'
"
" Experimental
" Plug 'autozimu/LanguageClient-neovim', {
"   \ 'branch': 'next',
"   \ 'do': 'bash install.sh',
"   \ }

call plug#end()

let g:mustache_abbreviations = 1
let g:multi_cursor_exit_from_visual_mode = 0

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif

set omnifunc=syntaxcomplete#Complete

"Map leader to comma
let mapleader = ","

"Use commands like this: ;w instead of :w
nnoremap ; :

"Easymotion
map <Leader> <Plug>(easymotion-prefix)
" Require tpope/vim-repeat to enable dot repeat support
" Jump to anywhere with only `s{char}{target}`
" `s<CR>` repeat last find motion.
nmap s <Plug>(easymotion-s)
" Bidirectional & within line 't' motion
" omap t <Plug>(easymotion-bd-tl)
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

"Easytags
"Async easytags
let g:easytags_async = 1

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
map <C-l> :CtrlPMRU<CR>
"Speed fixes http://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" air-line
let g:airline_powerline_fonts = 1

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep          = '▶'
let g:airline_left_alt_sep      = '»'
let g:airline_right_sep         = '◀'
let g:airline_right_alt_sep     = '«'
let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'
let g:airline_symbols.linenr    = '␊'
let g:airline_symbols.branch    = '⎇'
let g:airline_symbols.paste     = 'ρ'
let g:airline_symbols.paste     = 'Þ'
let g:airline_symbols.paste     = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

nnoremap <leader>2 <C-n> :NERDTreeToggle<CR>
nmap \| :NERDTreeFind<CR>
nmap \ :NERDTreeToggle<CR>
let g:NERDTreeHijackNetrw=0

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

"Gitgutter
set signcolumn=yes

set nocursorcolumn
set nocursorline
syntax sync minlines=256
set synmaxcol=400
set re=1

let test#strategy = 'neoterm'

"Exit terminal mode with esc
:tnoremap <Esc> <C-\><C-n>"

"Improve windows navigation by using 'alt + x' combination even when terminal window is active
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

"Neomake on save
autocmd! BufWritePost * Neomake

"use ESLint
let g:neomake_javascript_enabled_makers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(pwd)/node_modules/eslint/bin/eslint.js'

" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

"Auto remove trailing whitespaces on save
autocmd BufWritePre * FixWhitespace

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Tab completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Center screen on next/previous selection.
nnoremap n nzz
nnoremap N Nzz
" Last and next jump should center too.
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
nnoremap <C-\> :Ag<Space>-Q<Space>''<Left>

let g:neoformat_javascript_prettier = {
            \ 'exe': 'prettier',
            \ 'args': ['--single-quote']
            \ }
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_runner = "os_x_iterm2"

" Python provider setup with pyenv
let g:python_host_prog = '/Users/mikoscz/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/mikoscz/.pyenv/versions/neovim3.6/bin/python'

let g:vim_ember_imports_map = '<Leader>e'

xnoremap p pgvy

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0

let g:deoplete#sources#ternjs#tern_bin = '/Users/mikoscz/.nvm/versions/node/v8.6.0/bin/ternjs'
let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'hbs',
      \ ]

" let g:sql_type_default = 'sql'

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
