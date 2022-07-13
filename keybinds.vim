" Key bindings

" Plugin-specific bindings are in ./plugins, except for chorded 
" keys.

" Space as leader:
let mapleader=" "
noremap <Space> <Nop>

" Use k+j as <ESC>
if exists("*arpeggio#map")
	call arpeggio#map('i', '', 130, 'jk', '<Esc>')
else
	" fallback if plugins aren't available
	imap kj <Esc>
endif

" <leader>n or w+n  for nerdtree
map <Leader>n :NERDTreeToggle<CR>
if exists("*Arpeggio")
	Arpeggio inoremap wn :NERDTreeToggle<CR>
	Arpeggio nnoremap wn :NERDTreeToggle<CR>
endif

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



