let mapleader=" "
nnoremap <Space> <Nop>|                   " Disable space
nnoremap <leader>sv :source $MYVIMRC<CR>| " Source init.vim
map <leader>r :Ranger<CR>

map <silent> <A-q> :Commentary<CR>|       " Nerd commentery block
nnoremap <C-F> :CtrlSF<CR>                " Search references
map <silent> <C-p> :FZF<CR>
map <silent> <A-w> :Goyo<CR>|             " Zenmode
nmap <M-j> mz:m+<cr>`z|                   " Move lines around with Alt
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


nnoremap j gj|                            " Move by visual lines
nnoremap k gk
nnoremap J 10j|                           " Faster vertical movement
nnoremap K 10k
vnoremap K 10k
vnoremap J 10j
noremap B ^|                              " Goto beginning/end of the line
noremap E $
noremap ^ <nop>                           " Disable default alternative
noremap $ <nop>
vnoremap < <gv|                           " Better indenting
vnoremap > >gv
nnoremap Q @q|                            " replay macro on register q

" python (replace with nice)
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

if exists('g:vscode')
  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>
else
  " Better nav for omnicomplete
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " I hate escape more than anything else
  inoremap jk <Esc>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <silent> <S-TAB> :bprevious<CR>

  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  inoremap <silent> <C-s> <Esc>

  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  imap <C-h> <C-w>h|                        " Window movement
  imap <C-j> <C-w>j
  imap <C-k> <C-w>k
  imap <C-l> <C-w>l
  " Better window navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " Terminal window navigation (bugged with floating windows)
  " tnoremap <C-h> <C-\><C-N><C-w>h
  " tnoremap <C-k> <C-\><C-N><C-w>k
  " tnoremap <C-j> <C-\><C-N><C-w>j
  " tnoremap <C-l> <C-\><C-N><C-w>l

  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  " tnoremap <Esc> <C-\><C-n>

  " Use alt + hjkl to resize windows
  " nnoremap <silent> <M-j>    :resize -2<CR>
  " nnoremap <silent> <M-k>    :resize +2<CR>
  " nnoremap <silent> <M-h>    :vertical resize -2<CR>
  " nnoremap <silent> <M-l>    :vertical resize +2<CR>

  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>

  let g:elite_mode=0                      " Disable arrows"
  " Disable arrow movement, resize splits instead.
  if get(g:, 'elite_mode')
    nnoremap <C-Up>    :resize -2<CR>
    nnoremap <C-Down>  :resize +2<CR>
    nnoremap <C-Left>  :vertical resize -2<CR>
    nnoremap <C-Right> :vertical resize +2<CR>
  endif

endif

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
