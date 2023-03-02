set nocompatible

"{{{

" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
set termguicolors
colorscheme gruvbox
set background=dark

"}}}

"{{{ Autocommands

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

"}}}

" This shows what you are typing as a command.
set showcmd

" Syntax Highlighting
filetype on
filetype plugin on

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

