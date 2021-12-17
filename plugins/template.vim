" Make sure directories exist, otherwise it will fail over to /tmp
if !isdirectory($HOME."/.vim/templates")
    call mkdir($HOME."/.vim/templates", "", 0700)
endif


let g:templates_directory = $HOME."/.vim/templates/"

let g:templates_global_name_prefix = "x"

