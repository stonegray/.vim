" Key bindings


" Plugin-specific bindings are in ./plugins, except for chorded 
" keys.

" Chorded:

" Space as leader:
let mapleader=" "
noremap <Space> <Nop>

" Use k+j as <ESC>
" Relaxed timing for the kj mapping: 
call arpeggio#map('i', '', 130, 'jk', '<Esc>')
"call arpeggio#map('i', '', 130, 'wq', ':wq')

" <leader>n or w+n  for nerdtree
map <Leader>n :NERDTreeToggle<CR>
Arpeggio inoremap wn :NERDTreeToggle<CR>
Arpeggio nnoremap wn :NERDTreeToggle<CR>


map <Leader>w :w<CR>

" Minor_Changes:

" Save with sudo if W is used:
command W w !sudo tee % > /dev/null
" Q iS nOt aN eDiToR cOmMaNd
command Q q


" Toggle relnumber
nnoremap <leader>f :call RelToggle()<cr>
function! RelToggle()
	if &relativenumber
		setlocal relativenumber=0
	else
		setlocal relativenumber=4
	endif
endfunction


"" Next tab with t
map <Leader>t :tabnext <return>


" Use :gs to open Gstatus on right side of screen
command Gitv vertical belowright Git
command Gitb botright Git
cnoreabbrev gs Gitv
map <Leader>g :gs<CR>
cnoreabbrev ghs Gitb


