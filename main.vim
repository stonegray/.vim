" Stone's 2021 Vim Config
" -----------------------------

" Make sure dependencies are installed:
source ~/.vim/autoinstall.vim

" Load helper functions:
source ~/.vim/util.vim

function! PostinstallCoc(info)
	echohl None
	echo " - Automatically finishing coc.nvim install using npm (yarn if available)"
	silent !cd ~/.vim/pdata/coc.nvim; npm install
	syntax on
	"call system("cd ~/.vim/pdata/coc.nvim; npm install")
endfunction

" Plugins:
call plug#begin('~/.vim/pdata')

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': function('PostinstallCoc')}

Plug 'kevinoid/vim-jsonc'
"
" Temporary fix until I find out why:
if filereadable('~/.vim/pdata/coc.nvim/build/index.js')
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

Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
call plug#end()

function! Load()

	source ~/.vim/update.vim
	source ~/.vim/settings.vim

	" Provide fallback when not installed:
	call arpeggio#load()

	filetype plugin indent on

	source ~/.vim/commands.vim
	source ~/.vim/nerdtree.vim
	source ~/.vim/undo.vim
	source ~/.vim/theme.vim
	source ~/.vim/keybinds.vim

	for f in split(glob('~/.vim/plugins/*.vim'), '\n')
		exe 'source' f
	endfor

	source ~/.vim/splash.vim

endfunction


" Check for first install:
if !isdirectory(glob('~/.vim/pdata/'))
	"autocmd VimEnter * PlugInstall --sync 

	" Text can bleed through for some reason unless this is set
	" TODO conditionally run based on $TERM
	echohl None
	redraw
	
	
	" Use a fullscreen window for this one:
	let g:plug_window= "botleft " + winheight(0) + "new"
	PlugInstall --sync
	unlet g:plug_window

	" We can't reload here, as it would cause a redefinition
	" of FirstInstall(), so set a flag and do it later:
	let g:needsReload=1

	" Create new and close old window:
	enew
	call win_execute(0, 'close')
	
	call append('$', "")
	"call append('$', ' vim' . GetVimVersion())
	call append('$', '  Welcome to Vim')
	call append('$', "")
	call append('$', "  running stone's vimrc v.2.0.2")
	call append('$', "")
	call append('$', " ")

	" ... and set some options for it
	setlocal
		\ nocursorcolumn
		\ nocursorline
		\ nolist
		\ nonumber
		\ foldcolumn=0
		\ nofoldenable
		\ noswapfile
		\ norelativenumber
		\ bufhidden=wipe
		\ buftype=nofile
		\ nobuflisted
                \ nospell
		\ ft=help
		\ stl=
		\ scr=0
		\ mouse=
	
	" is this a bug? hide cursor by telling vim there's no show command:
	setlocal t_ve=

	" No modifications to this buffer
	setlocal nomodifiable nomodified readonly

	" When we go to insert mode start a new buffer, and start insert
	nnoremap <buffer><silent> <CR> :q | set t_ve&vim
	nnoremap <buffer><silent> e :enew<CR> | set t_ve&vim
	nnoremap <buffer><silent> i :enew <bar> startinsert<CR> | setlocal t_ve&vim | setlocal nomodified
	nnoremap <buffer><silent> o :enew <bar> startinsert<CR> | setlocal t_ve&vim | setlocal nomodified

	call indent_guides#disable()

	redraw
	source $MYVIMRC
	redraw
endif

if isdirectory(glob('~/.vim/pdata/'))
	call Load()
endif

" Not sure why this is here, TODO move it:
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <C-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <C-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <C-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <C-w>\ :TmuxNavigatePrevious<cr>


