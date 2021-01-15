" ctrlsf.vim
" https://awesomeopensource.com/project/dyng/ctrlsf.vim

let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ "duration_less_than": 1000
    \ }
let g:ctrlfs_confirm_save = 0
" default bindings
let g:ctrlfs_mapping = { 
    \   "open"    : ["<CR>", "o"],
    \   "openb"   : "O",
    \   "split"   : "<C-O>",
    \   "vsplit"  : "",
    \   "tab"     : "t",
    \   "tabb"    : "T",
    \   "popen"   : "p",
    \   "popenf"  : "P",
    \   "quit"    : "q",
    \   "next"    : "<C-J>",
    \   "prev"    : "<C-K>",
    \   "pquit"   : "q",
    \   "loclist" : "",
    \   "chgmode" : "M",
    \   "stop"    : "<C-C>"
    \ }




