"Map leader to comma
let mapleader = ","

call plug#begin()
" Golang
Plug 'sebdah/vim-delve'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Graphql
Plug 'jparise/vim-graphql'

" Theme & UI
Plug 'mhartington/oceanic-next'

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

"Fuzzy search:
" Plug 'ctrlpvim/ctrlp.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Comments:
Plug 'tpope/vim-commentary'
Plug 'bronson/vim-trailing-whitespace'
Plug 'terryma/vim-expand-region'
Plug 'godlygeek/tabular'

Plug 'lmeijvogel/vim-yaml-helper'

"HTML
Plug 'mattn/emmet-vim'

"Neovim only
Plug 'janko-m/vim-test'
Plug 'kassio/neoterm'

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
Plug 'sukima/vim-javascript-imports'
Plug 'sukima/vim-ember-imports'

"Linting
Plug 'sbdchd/neoformat'

Plug 'terryma/vim-multiple-cursors'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'andymass/vim-matchup'

"fzf
Plug 'junegunn/fzf',                    { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bartoszmaka/fzf-mru.vim'

" WakaTime
Plug 'wakatime/vim-wakatime'

Plug 'mhinz/vim-startify'
call plug#end()

set title
set background=dark

syntax on
colorscheme oceanicnext

set encoding=utf-8
set fileencoding=utf-8

" Coc
nmap <leader><C-a> :CocCommand<CR>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap CocAction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Use <C-l> for trigger snippet expand.
imap <C-s> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'


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

" nmap <S-f> :Neoformat<CR>
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

let g:mustache_abbreviations = 1
let g:multi_cursor_exit_from_visual_mode = 0

" Colors for colorscheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif

set omnifunc=syntaxcomplete#Complete

"Use commands like this: ;w instead of :w
nnoremap ; :

"Easymotion
" map <Leader> <Plug>(easymotion-prefix)
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
" autocmd! BufWritePost * Neomake

"use ESLint
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:syntastic_javascript_eslint_exe = '$(pwd)/node_modules/eslint/bin/eslint.js'

" neomake
" nmap <Leader><Space>o :lopen<CR>      " open location window
" nmap <Leader><Space>c :lclose<CR>     " close location window
" nmap <Leader><Space>, :ll<CR>         " go to current error/warning
" nmap <Leader><Space>n :lnext<CR>      " next error/warning
" nmap <Leader><Space>p :lprev<CR>      " previous error/warning

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
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

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

let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:coc_node_path='/Users/mikoscz/.nvm/versions/node/v12.14.1/bin/node'

:imap kj <Esc>

" autocmd VimEnter * NERDTree

let g:coc_filetype_map = {
      \ 'sass': 'css',
      \ }

" matchup
let g:matchup_matchparen_status_offscreen   = 1
let g:matchup_matchparen_deferred           = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_transmute_enabled             = 0

" NerdTree
let g:NERDTreeDirArrowExpandable        = '📁'
let g:NERDTreeDirArrowCollapsible       = '📂'
highlight! NERDTreeOpenable ctermfg=132 guifg=#D19A66
highlight! def link NERDTreeClosable NERDTreeOpenable

" Fzf
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_command_prefix = 'Fzf'
" let g:fzf_layout = { 'down': '~25%' }
let g:fzf_mru_relative = 1
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Typedef'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Identifier'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'pointer': ['fg', 'Identifier'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment']
      \ }

command! -bang -nargs=? -complete=dir FZFFilesPreview
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" fzf
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, 'number', 'no')

  let height = float2nr(&lines/2)
  let width = float2nr(&columns * 0.8)
  let row = float2nr(&lines / 5)
  let col = float2nr((&columns - width) / 3)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height':height,
        \ }
  let win =  nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&number', 0)
  call setwinvar(win, '&relativenumber', 0)
endfunction

let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" fix fzf being open in terminal/insert mode randomly after 0.4 update by adding 'a<Bs>'
nnoremap <C-p><C-r> :FZFFreshMruPreview<CR>a<Bs>
nnoremap <C-p><C-p> :FZFFilesPreview<CR>a<Bs>
nnoremap <C-p><C-g> :FzfGitFiles?<CR>a<Bs>
nnoremap <C-p><C-h> :FzfHistory<CR>a<Bs>
nnoremap <C-p><C-b> :FzfBuffers<CR>a<Bs>
nnoremap <C-p><C-f> :FzfRg<CR>a<Bs>
nnoremap <C-p><C-l> :FzfLines<CR>a<Bs>
nnoremap <C-p><C-v> :FzfCommits<CR>a<Bs>
nnoremap <C-p><C-m> :FzfMarks<CR>a<Bs>

let g:fzf_action = {
      \ 'ctrl-q': function('s:build_quickfix_list'),
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit'}

set wildignore+=
      \*/tmp/*,
      \*/node_modules/*,
      \*/.git/*,
      \*.so,
      \*.swp,
      \*.zipo

tnoremap <esc> <C-c>

" sometimes I just hold shift for too long
cabbrev W   w
cabbrev Wa  wa
cabbrev Wq  wq
cabbrev WQ  wq
cabbrev Wqa wqa
cabbrev WQa wqa
cabbrev Q   q
cabbrev Qa  qa
cabbrev Q!  q
cabbrev Qa! qa

" ESC on jk in insert mode
:imap jk <Esc>

" coc-yank
nnoremap <silent> <space>p  :<C-u>CocList -A --normal yank<cr>
hi HighlightedyankRegion term=bold ctermbg=0 guibg=#24d4ae

" Copy curreny file path
:nnoremap <Leader>cp :let @+=expand('%:p')<CR>

:nnoremap <C-l><C-i> :call CocAction('runCommand', 'editor.action.organizeImport')<CR>
:nnoremap <C-l><C-l> :Prettier<CR>
:nnoremap <C-l><C-k> :! go fmt %:p<CR>q
:nnoremap <Leader>s :GoInfo<CR>

autocmd Filetype go nnoremap <C-l><C-l> :GoFmt<CR>

" GO
set tabstop=4

let g:startify_bookmarks = [
            \ { 'z': '~/.zshrc' },
            \ { 'v': '~/Dotfiles/.nvimrc' },
            \ ]

" Search and replace
nnoremap <Leader>sr :%s/<c-r><c-w>//gc<Left><Left><Left>
vnoremap <Leader>sr :call Get_visual_selection()<cr>

function! Get_visual_selection()
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  let selection = join(lines,'\n')
  let change = input('Replace: ')
  execute ":%s/".selection."/".change."/gc"
endfunction
