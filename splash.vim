fun! GetVimVersion()
    redir => s
    silent! version
    redir END
    return matchstr(s, 'VIM - Vi IMproved\zs[^\n]*(*)')
endfunction


fun! Start()
	" Don't run if: we have commandline arguments, we don't have an empty
	" buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
	if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
		return
	endif

	" Start a new buffer ...
	enew
	call append('$', "")
	"call append('$', ' vim' . GetVimVersion())
	call append('$', '  Welcome to Vim')
	call append('$', "")
	call append('$', "  running stone's vimrc v.2.0.2")
	call append('$', "")
	call append('$', "")
	for line in split(system('fortune'), '\n')
		call append('$', '        ' . l:line)
	endfor


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

        " Disable statusline
        setlocal stl=

	
	" is this a bug? hide cursor by telling vim there's no show command:
	setlocal t_ve=


	if !empty(w:indent_guides_matches)
		let l:index = 0
		for l:match_id in w:indent_guides_matches
			try
				call matchdelete(l:match_id)
			catch /E803:/
				" Do nothing
			endtry
			call remove(w:indent_guides_matches, l:index)
			let l:index += l:index
		endfor
	endif
	" No modifications to this buffer
	setlocal nomodifiable nomodified readonly

        " no pgup/pgdn
        setlocal scr=0

        " Disable mouse
        setlocal mouse=""

	" When we go to insert mode start a new buffer, and start insert
	nnoremap <buffer><silent> <CR> :q | set t_ve&vim
	nnoremap <buffer><silent> e :enew<CR> | set t_ve&vim
	nnoremap <buffer><silent> i :enew <bar> startinsert<CR> | setlocal t_ve&vim | setlocal nomodified
	nnoremap <buffer><silent> o :enew <bar> startinsert<CR> | setlocal t_ve&vim | setlocal nomodified

	call indent_guides#disable()

endfun


autocmd VimEnter * call Start()
