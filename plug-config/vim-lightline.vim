" vim-lightline
" https://github.com/itchyny/lightline.vim

" let g:lightline = { 'colorscheme': 'ThemerVimLightline'}
let g:lightline = {
      \ 'colorscheme': 'ThemerVimLightline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }
" update colorscheme on background change
autocmd OptionSet background
      \ execute 'source' globpath(&rtp, 'autoload/plugged/lightline.vim/autoload/lightline/colorscheme/ThemerVimLightline.vim')
      \ | call lightline#colorscheme() | call lightline#update()

