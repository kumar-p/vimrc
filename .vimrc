set nocompatible

"{{{ Autocommands

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"}}}

" This shows what you are typing as a command.
set showcmd

" Syntax Highlighting
filetype on
filetype plugin on
syntax enable

" Set Autoindent
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Line Numbers
set number

" Incremental searching
set incsearch

" Highlight things that we find with the search
set hlsearch

"{{{Look and Feel

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"}}}
