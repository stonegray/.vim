
fun! HasCommand()

	silent! let l:status = system(l:command . ' > /dev/null')

	if match(l:status, '\cunknown') != -1 || match(l:status, '\cnot') != -1
		echo 'command not found'
		return 0
	endif

	return 1

endfun
