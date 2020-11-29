" A Vim plugin which shows a git diff in the sign column.
" https://github.com/airblade/vim-gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 1
let g:gitgutter_preview_win_floating = 1

let g:gitgutter_sign_added              = ''
let g:gitgutter_sign_modified           = ''
let g:gitgutter_sign_removed            = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed   = ''

highlight GitGutterAdd    guifg=#587C0C ctermfg=2
highlight GitGutterChange guifg=#0C7D9D ctermfg=3
highlight GitGutterDelete guifg=#94151B ctermfg=1

highlight GitGutterAddLineNr guifg=#587C0C ctermfg=2
highlight GitGutterChangeLineNr guifg=#0C7D9D ctermfg=3
highlight GitGutterDeleteLineNr guifg=#94151B ctermfg=1
highlight GitGutterChangeDeleteLineNr guifg=#94151B ctermfg=2
