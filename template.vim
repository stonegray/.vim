





" Make sure directories exist, otherwise it will fail over to /tmp
if !isdirectory($HOME."/.vim/templates")
    call mkdir($HOME."/.vim/templates", "", 0700)
endif

