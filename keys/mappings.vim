let mapleader=" "
nnoremap <Space> <Nop>|                   " Disable space
nnoremap <leader>sv :source $MYVIMRC<CR>| " Source init.vim
map <silent> <A-q> :call Comment()<CR>|   " Comment block
map <silent> <A-f> :FZF<CR>|              " Fuzzy file finder
map <silent> <C-p> :FZF<CR>
map <silent> <A-w> :Goyo<CR>|             " Zenmode
map <A-h> :bprevious<CR>
map <A-l> :bnext<CR>
nmap <M-j> mz:m+<cr>`z|                   " Move lines around with Alt
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>r :Ranger<CR>

nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferGoto 9<CR>

nnoremap j gj|                            " Move by visual lines
nnoremap k gk
nnoremap J 10j|                           " Faster vertical movement
nnoremap K 10k
noremap B ^|                              " Goto beginning/end of the line
noremap E $
noremap ^ <nop>                           " Disable default alternative
noremap $ <nop>
vnoremap < <gv|                           " Better indenting
vnoremap > >gv

" python
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
  
  " Use Alt+j/k to move line in  visual mode
  " xnoremap <A-k> :move '<-2<CR>gv-gv
  " xnoremap <A-j> :move '>+1<CR>gv-gv

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>

  " TAB in general mode will move to text buffer
  nnoremap <silent> <TAB> :bnext<CR>
  " SHIFT-TAB will go back
  nnoremap <silent> <S-TAB> :bprevious<CR>

  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv
  " Alternate way to save
  nnoremap <silent> <C-s> :w<CR>
  inoremap <silent> <C-s> <Esc>

  " Alternate way to quit
  nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  imap <A-h> <C-w>h|                        " Window movement
  imap <A-j> <C-w>j
  imap <A-k> <C-w>k
  imap <A-l> <C-w>l
  " Better window navigation
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l

 " Terminal window navigation (bugged with floating windows)
  tnoremap <A-h> <C-\><C-N><C-w>h
  tnoremap <A-k> <C-\><C-N><C-w>k
  tnoremap <A-j> <C-\><C-N><C-w>j
  tnoremap <A-l> <C-\><C-N><C-w>l

  inoremap <A-h> <C-\><C-N><C-w>h
  inoremap <A-j> <C-\><C-N><C-w>j
  inoremap <A-k> <C-\><C-N><C-w>k
  inoremap <A-l> <C-\><C-N><C-w>l
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
