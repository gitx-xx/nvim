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

let s:hidden = 1
function! ToggleClutter()
	if s:hidden == 0
		let s:hidden = 1
    set laststatus=0
    set noshowmode
		set noshowcmd
    set shortmess+=F
		set nonumber
	else
		let s:hidden = 0
		set laststatus=2
    set showmode
		set showcmd
		set shortmess=filnxtToOFAIc
		set number relativenumber
	endif
endfunction

function! ToggleConcealLevel()
	let &conceallevel = ( &conceallevel == 2 ? 0 : 2 )
endfunction

