autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        " q
      endif
    endif
  endif
endfunction

" show nerdtree by default, some tweaks liek focus.
let NERDTreeShowHidden=0
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Enable sticky tree using plugin
"autocmd vimenter * NERDTreeTabsOpen
"autocmd vimenter * NERDTree

" Fix a weird bug where opening Gstatus makes nerdtree zero width
"autocmd VimEnter * wincmd p
autocmd vimenter * set winwidth=25
autocmd vimenter * set winminwidth=25

let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "left"

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"  Might as well configure netrw here, we still use it:
let g:netrw_banner=0
let g:newrw_browse_split=4
let g:netrw_altv=1 " splits to right
let g:netrw_liststyle=3 "tree
let g:netrw_list_nide=netrw_gitignore#Hide()
"let g:netrw_list_hide
