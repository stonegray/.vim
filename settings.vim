
set path+=**

set visualbell
set modelines=0
set nomodeline
set splitbelow
set splitright

" Wild
set wildmode=longest:full,full
set wildmenu
set wildignore=*.pyc,*.tmp,*.log,node_modules

set shiftwidth=2 expandtab incsearch showmatch smartcase autoindent
set smartcase

set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=80
set noexpandtab
set autoindent
set smartindent
" silent to prevent interfering with splash
silent! set fileformat=unix
set smarttab
set cindent

" make search better
set hlsearch "highlight stuff
set ignorecase " ignore case in search
set smartcase " but if we put a capital letter, don't ignore it.

set scrolloff=5

set backspace=indent,eol,start

" Improve whitespace chars when shown
set listchars+=space:␣
set listchars+=eol:¬
set listchars+=tab:··

" Draw faster
set ttyfast
set lazyredraw

" mouse
if !has('nvim')
  set hlsearch
  " Neovim has SGR enabled by default.
  " Enable mouse mode working past 220th column
  " https://stackoverflow.com/questions/7000960/in-vim-why-doesnt-my-mouse-work-past-the-220th-column
  if has("mouse_sgr")
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  end
endif 

" Show commands as they are typed, not really a replacement for a keystroke
" viewer whens streaming, but somewhat helpful nontheless
set showcmd

set cmdheight=2

" don't pass messages to ins-completion-menu, coc
set shortmess+=c

set signcolumn=number
