" Random Useful Functions

" No idea what this is
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>



function! ToggleStatusline()
	let &laststatus = ( &laststatus == 2 ? 0 : 2 )
endfunction
