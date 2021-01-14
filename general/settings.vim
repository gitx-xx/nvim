set nocompatible                        " Necessary for cool shit
filetype plugin on
syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments
set nowrap                              " Display long lines as just one line
set linebreak
set whichwrap+=<,>,[,],h,l
set encoding=UTF-8                      " The encoding displayed
set fileencoding=UTF-8                  " The encoding written to file
set visualbell                          " Nop?
set colorcolumn=80                      " Highlight column
" set pumheight=10                        " Makes popup menu smaller
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
" set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number relativenumber               " Line numbers
set scrolloff=999                       " Center cursor on screen
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set incsearch                           " search as characters are entered
set hlsearch                            " highlight search result
set smartcase                           " smartcase when search
set showmatch                           " show matching brackets
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set guifont=FiraCode\ Nerd\ Font
set foldenable                          " Enable folding
set foldlevelstart=99                   " Open most folds by default
set foldmethod=indent
set autoread                            " auto reload
set inccommand=split                    " realtime search and replace command
set undofile                            " persistent undo"

" New stuff
" set notimeout nottimeout
" set scrolloff=1
" set sidescroll=1
" set sidescrolloff=1
" set display+=lastline
" set backspace=eol,start,indent
" set nostartofline
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

autocmd FocusGained,BufEnter * checktime     " auto reload
autocmd! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufEnter *.md setlocal syntax=vimwiki
" full stack
autocmd BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

autocmd BufNewFile,BufRead *.jsx
    \ set filetype=javascript

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" force sync syntax highlight
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


" You can't stop me
cmap w!! w !sudo tee %


