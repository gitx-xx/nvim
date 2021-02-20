" EasyMotion
" Vim motions on speed
" https://github.com/easymotion/vim-easymotion

let g:EasyMotion_do_mapping = 1 " enable default mappings
let g:EasyMotion_smartcase = 1 " ignore case if lowercase
let g:EasyMotion_verbose = 0
let g:EasyMotion_do_shade = 0 " what is this?
let g:EasyMotion_prompt = '>' " replace with icon 
let g:EasyMotion_keys='asdghklqwertyuiopzxcvbnmfj;' " default keys
let g:EasyMotion_space_jump_first = 1 " space jumps to first match

" default easymotion leader
map <Leader><Leader> <Plug>(easymotion-prefix)
" easymotion with 2 character
nmap <silent> s <Plug>(easymotion-s2)
" same but multiple characters
nmap <silent> S <Plug>(easymotion-sn)

" jump to line
map <silent> <Leader>j <Plug>(easymotion-j)
map <silent> <Leader>k <Plug>(easymotion-k)

" in case the linter outputs syntax errors enable these
" autocmd User EasyMotionPromptBegin silent! CocDisable
" autocmd User EasyMotionPromptEnd   silent! CocEnable
