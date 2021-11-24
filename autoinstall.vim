
" Auto install plugin manager

" Helper script to download and install vim-plug, scoped
" because there's no good reason to be calling this later
function s:dlplug()
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endfunction

if empty(glob('~/.vim/autoload/plug.vim'))
	call s:dlplug();
endif

" Check for partial or cleaned install:
if !isdirectory(glob('~/.vim/plugged/'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

