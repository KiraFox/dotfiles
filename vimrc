" My Vim config

" Colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:gruvbox_hls_cursor = 'purple'
colorscheme gruvbox

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=~/.local/share/vim/backup
set belloff=all
set complete-=i
set cscopeverbose
set directory=~/.local/share/vim/swap//
set display=lastline
set encoding=utf-8
set fillchars=vert:\|,fold:·
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set nocompatible
set nrformats=bin,hex
set ruler
set sessionoptions-=options
set shortmess+=F
set showcmd
set sidescroll=1
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set undodir=~/.local/share/vim/undo
set viminfo+=!
set wildmenu

" enable modelines in files
set modeline
set modelines=5

if !isdirectory(&backupdir)
  call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
  call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
  call mkdir(&undodir, "p")
endif

" Options

" Turn on persistent undo
set undofile

" Turn on line numbers
set number

" Show whitespace
set list

" Soft indent for soft wrap lines
let &showbreak = '+   '

" Smart case-insensitive search
set ignorecase
set smartcase

" Allow buffers with unsaved changes to be hidden
set hidden

" Make it obvious where 80 characters is
set colorcolumn=81

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" 4 Space Indents
set cindent
set nopaste " people say this has to be off
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

"Backspace & Cursor Keys wrap to next/prev lines
set whichwrap+=<,>,h,l

" Mappings

" Page Down & Page Up
nnoremap J <C-d>
nnoremap K <C-u>

" Spell check
" Toggle spell check
nnoremap <Leader>s :set spell!<CR>

" Buffers
nnoremap <C-x> :bdelete<CR>

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim:
