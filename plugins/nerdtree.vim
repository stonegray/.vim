" Uncomment to close if only tree is open:
"autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" hide nerdtree by default, some tweaks liek focus.
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Fix a weird bug where opening Gstatus makes nerdtree zero width
" autocmd VimEnter * wincmd p
autocmd vimenter * set winwidth=25
autocmd vimenter * set winminwidth=25

let NERDTreeIgnore = ['\.pyc$', '\.swp$']
let NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "left"

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
