


" Make sure directories exist, otherwise it will fail over to /tmp
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "", 0700)
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "", 0700)
endif

" Prefer .vim, but if we can't write for whatever reason
" we can save in /tmp
set undodir=~/.vim/undo/,/tmp/
set backupdir=~/.vim/backup/,/tmp/
set directory=~/.vim/swap/,/tmp/

set undofile

" Reduce update time to 500msec
set updatetime=500
