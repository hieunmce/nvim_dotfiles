call plug#begin('~/.config/nvim/plugged')

" Neovim
"Plug 'mhinz/vim-grepper'
Plug 'benekastah/neomake'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Appearance
Plug 'chrisbra/Colorizer'
Plug 'skwp/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'jby/tmux.vim'
Plug 'morhetz/gruvbox'
"Plug 'godlygeek/csapprox'

" Git
Plug 'gregsexton/gitv'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'

" Languages

Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
Plug 'jtratner/vim-flavored-markdown'
Plug 'skwp/vim-html-escape'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-markdown'
Plug 'vim-syntastic/syntastic'

" Project
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdtree'
Plug 'simnalamburt/vim-mundo'

" Go
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

" Ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rvm'
Plug 'vim-ruby/vim-ruby'
Plug 'keith/rspec.vim'
Plug 'skwp/vim-iterm-rspec'
Plug 'skwp/vim-spec-finder'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'tpope/vim-bundler'

" Node
Plug 'moll/vim-node'
Plug 'jelera/vim-javascript-syntax'
"Plug 'pangloss/vim-javascript'

" Search
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/IndexedSearch'
Plug 'nelstrom/vim-visual-star-search'
Plug 'skwp/greplace.vim'
Plug 'easymotion/vim-easymotion'

" Tag
Plug 'majutsushi/tagbar'

" textobjects
"Plug 'austintaylor/vim-indentobject'
"Plug 'bootleq/vim-textobj-rubysymbol'
"Plug 'coderifous/textobj-word-column.vim'
"Plug 'kana/vim-textobj-datetime'
"Plug 'kana/vim-textobj-entire'
"Plug 'kana/vim-textobj-function'
"Plug 'kana/vim-textobj-user'
"Plug 'lucapette/vim-textobj-underscore'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'nelstrom/vim-textobj-rubyblock'
"Plug 'thinca/vim-textobj-function-javascript'
"Plug 'vim-scripts/argtextobj.vim'

" improvements
"Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
"Plug 'Shougo/neocomplete.git'
"Plug 'briandoll/change-inside-surroundings.vim.git'
"Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
"Plug 'vim-scripts/camelcasemotion.git'
"Plug 'vim-scripts/matchit.zip.git'
"Plug 'kristijanhusak/vim-multiple-cursors'
"Plug 'Keithbsmiley/investigate.vim'
"Plug 'chrisbra/NrrwRgn'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'MarcWeber/vim-addon-mw-utils.git'
"Plug 'bogado/file-line.git'
"Plug 'mattn/webapi-vim.git'
"Plug 'sjl/gundo.vim'
"Plug 'skwp/YankRing.vim'
"Plug 'tomtom/tlib_vim.git'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
"Plug 'vim-scripts/AnsiEsc.vim.git'
"Plug 'vim-scripts/AutoTag.git'
"Plug 'vim-scripts/lastpos.vim'
"Plug 'vim-scripts/sudo.vim'
"Plug 'goldfeld/ctrlr.vim'

" ryansch
Plug 'tpope/vim-eunuch'
Plug 'leafo/moonscript-vim'
Plug 'honza/dockerfile.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'itspriddle/vim-marked'
Plug 'markcornick/vim-terraform'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-obsession'
Plug 'junegunn/gv.vim'

call plug#end()

" global customizations

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

" set foldmethod=indent   "fold based on indent
" set foldnestmax=3       "deepest fold is 3 levels
" set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"======================================
""""""""""""""""""""""""""""""""""""""
" LOAD SETTING VIM
so ~/.config/nvim/settings.vim
""""""""""""""""""""""""""""""""""""""
"======================================

" Ag
"command! -nargs=* -complete=file Ag Grepper! -tool ag -query <args>

" Markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Lightline
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'MyFugitive',
      \   'readonly': 'MyReadonly',
      \   'filename': 'MyFilename',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤ "
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[NoName]')
endfunction

" Use status bar even with single buffer
set laststatus=2

set encoding=utf-8

"set clipboard+=unnamedplus

set mouse=nir

"fzf
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> ,t :Files<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,w :Windows<CR>

" neomake
let g:neomake_ruby_enabled_makers = ['mri']
let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake

let mapleader = ','

"

" Auto complete
"""""""""""""""""""""""""""""""""""""

set completeopt+=noselect


" filetype plugin indent on
" " show existing tab with 4 spaces width
" set tabstop=4
" " when indenting with '>', use 4 spaces width
" set shiftwidth=4
" " On pressing tab, insert 4 spaces
" set expandtab
