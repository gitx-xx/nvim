set nocompatible                        " Necessary for cool shit
set nospell                             " Disable built-in spellchecker"
filetype plugin on
syntax on                               " Enables syntax highlighing
set formatoptions-=cro                  " Stop newline continution of comments
set nowrap                                " Display long lines as just one line
set linebreak
set whichwrap+=<,>,[,],h,l
set encoding=UTF-8                      " The encoding displayed
set fileencoding=UTF-8                  " The encoding written to file
set visualbell                          " Nop?
set colorcolumn=80                      " Highlight column
set pumheight=10                        " Makes popup menu smaller
set noruler              			          " Hide the cursor position
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=2                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set nonumber                            " Line numbers
set scrolloff=999                       " Center cursor on screen
set cursorline                          " Enable highlighting of the current line
set laststatus=0                        " Hide statusline by default
set showtabline=2                       " Always show tabs
set cmdheight=1                         " More space for displaying messages
set incsearch                           " search as characters are entered
set hlsearch                            " highlight search result
set smartcase                           " smartcase when search
set showmatch                           " show matching brackets
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to ins-completion-menu.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set guifont=FiraCode\ Nerd\ Font
set foldenable                          " Enable folding
set foldlevelstart=99                   " Open most folds by default
set foldmethod=indent
set autoread                            " auto reload
set undofile                            " persistent undo"
set background=dark                     " tell vim what the background color looks like
set hidden                              " enable unsaved changes

" inccommand=split might cause issue with treesitter
" https://github.com/neovim/neovim/issues/12967
set inccommand=split                    " realtime search and replace command

" remove split border
hi VertSplit guifg=bg guibg=NONE gui=NONE

autocmd FocusGained,BufEnter * checktime     " auto reload
autocmd! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufEnter *.{md} setlocal syntax=vimwiki
" full stack
autocmd BufNewFile,BufRead *.{js,jsx,html,css}
    \ set tabstop=2 softtabstop=2 shiftwidth=2

autocmd BufNewFile,BufRead *.jsx
    \ set filetype=javascript

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" set default filetype to markdown (disabled for now)
" autocmd BufEnter * if &filetype == "" | setlocal ft=vimwiki.markdown | endif

autocmd BufEnter *.{vim} :set syntax=vim

" force sync syntax highlight
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" You can't stop me
cmap w!! w !sudo tee %

