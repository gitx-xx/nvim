" Random Useful Functions

" No idea what this is
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>


" toogle dark/light background

" :call ToggleBackground()
function! ToggleBackground()
	let &background = ( &background == "dark"? "light" : "dark" )
endfunction

function! ToggleStatusline()
	let &laststatus = ( &laststatus == 2 ? 0 : 2 )
endfunction

function! ToggleConcealLevel()
	let &conceallevel = ( &conceallevel == 2 ? 0 : 2 )
endfunction

