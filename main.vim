" Stone's 2021 Vim Config
" -----------------------------


" Make sure dependencies are installed:
source ~/.vim/autoinstall.vim

" Load helper functions:
source ~/.vim/util.vim

" Plugins:
call plug#begin('~/.vim/plugged')

Plug 'kevinoid/vim-jsonc'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install'}

" Temporary fix until I find out why:
if filereadable('~/.vim/plugged/coc.nvim/build/index.js')
        echo 'Broken coc.nvim, run yarn again' 
endif

Plug 'sheerun/vim-polyglot'
Plug 'kana/vim-arpeggio'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
Plug 'aperezdc/vim-template'

" Git:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'majutsushi/tagbar'

Plug 'janko-m/vim-test'
Plug 'mbbill/undotree'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'

Plug 'chriskempson/base16-vim'
Plug 'luochen1990/rainbow'

Plug 'ludovicchabant/vim-gutentags'

Plug 'christoomey/vim-tmux-navigator'
call plug#end()

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>

source ~/.vim/update.vim
source ~/.vim/settings.vim

" Provide fallback when not installed:
if exists('*arpeggio#load')
	call arpeggio#load()
endif

filetype plugin indent on

source ~/.vim/commands.vim
source ~/.vim/nerdtree.vim
source ~/.vim/undo.vim
source ~/.vim/theme.vim
source ~/.vim/keybinds.vim
source ~/.vim/template.vim
source ~/.vim/snippet.vim

for f in split(glob('~/.vim/rc/plugins/*.vim'), '\n')
	exe 'source' f
endfor

source ~/.vim/splash.vim




"noremenu PopUp.Delete\ Rows :<c-u>g/\<<c-r><c-w>\>/d<cr>
