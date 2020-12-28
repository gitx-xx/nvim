" vim-buffet
" https://github.com/bagrat/vim-buffet

let g:buffet_always_show_tabline=1
let g:buffet_powerline_separators=0
let g:buffet_use_devicons=1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"
let g:buffet_show_index=1

" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#4C566A guifg=#FFFFFF
  hi! BuffetActiveBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#4C566A guifg=#FFFFFF
  hi! BuffetBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#2E3440 guifg=#4C566A
  hi! BuffetTab cterm=NONE ctermbg=5 ctermfg=8 guibg=#2E3440 guifg=#4C566A
endfunction
