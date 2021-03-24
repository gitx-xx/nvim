" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'tpope/vim-commentary' " Better Comments
    Plug 'tpope/vim-speeddating' " Change dates fast
    Plug 'glts/vim-radical' " Convert binary, hex, etc..
    Plug 'tpope/vim-repeat' " Repeat stuff
    Plug 'unblevable/quick-scope' " Highlights unique characters
    Plug 'suy/vim-context-commentstring' " Useful for React Commenting 

  if exists('g:vscode')
    " Plug 'asvetliakov/vim-easymotion' " Easy motion for VSCode
    Plug 'ChristianChiarulli/vscode-easymotion' " Custom version for VSCode
    Plug 'machakann/vim-highlightedyank'
  else
    " Enable these plugins before running PlugClean, disable otherwise
    " Plug 'ChristianChiarulli/vscode-easymotion' " Custom version for VSCode
    " Plug 'machakann/vim-highlightedyank'

    " Default plugins
    Plug 'liuchengxu/vim-which-key' " See what keys do like in emacs
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
    Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
    Plug 'junegunn/fzf.vim'
    Plug 'vimwiki/vimwiki' " Vim Wiki
    Plug 'tools-life/taskwiki' " Taskwiki
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense
    Plug 'mhinz/vim-startify' " Start Screen
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  } " Markdown Preview
    Plug 'voldikss/vim-floaterm' " Terminal
    Plug 'easymotion/vim-easymotion' " Easymotion
    Plug 'kevinhwang91/rnvimr' " Ranger in a floating window 
    Plug 'rbgrouleff/bclose.vim' " ranger.vim dependency
    Plug 'junegunn/goyo.vim' " Distraction-free writing
    Plug 'airblade/vim-rooter' " Auto-change project root
    Plug 'alvan/vim-closetag' " Auto close html tags
    Plug 'AndrewRadev/tagalong.vim' " Auto rename html tags
    Plug 'norcalli/nvim-colorizer.lua' " Colorizer #f8660d
    Plug 'tpope/vim-surround' " Surround
    Plug 'kyazdani42/nvim-web-devicons' " Cool Icons
    Plug 'ryanoasis/vim-devicons' " Cool Icons
    Plug 'nvim-treesitter/nvim-treesitter' " Better highlighting?
    Plug 'nvim-treesitter/playground' " Playground
    Plug 'townk/vim-autoclose' " Auto pairs for '(' '[' '{'
    Plug 'tpope/vim-fugitive' " Git plugin
    Plug 'takac/vim-hardtime' " Timeout for character motions
    Plug 'airblade/vim-gitgutter' " Git
    Plug 'turbio/bracey.vim' " live server
    Plug 'tpope/vim-sleuth' " auto set indent settings
    Plug 'sheerun/vim-polyglot' " Language pack
    Plug 'itchyny/lightline.vim' " Status line
    Plug 'mengelbrecht/lightline-bufferline' " Bufferline
    Plug 'mattn/emmet-vim' " html expanding abbreviations 
    Plug 'moll/vim-bbye' " Intuitive buffer closing
    Plug 'kshenoy/vim-signature' " add marks to gutter

    " Evalute these:
    Plug 'maxbrunsfeld/vim-yankstack' " paste and cycle yanks with <M-p>
    Plug 'schickling/vim-bufonly' " Delete other buffers
    Plug 'dyng/ctrlsf.vim'  " ack/ag/pt/rg powered code search <C+S-f>
    Plug 'rhysd/clever-f.vim'  " better find

    Plug 'skywind3000/asynctasks.vim' " async tasks
    Plug 'skywind3000/asyncrun.vim'
    " Plug 'puremourning/vimspector' " Debugging

    " Async Linting Engine
    " TODO make sure to add ale config before plugin
    " Plug 'dense-analysis/ale'
    
    " Multiple Cursors
    " TODO add this back in change from C-n

    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plugin Graveyard

    " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'romgrk/nvim-treesitter-context'

    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'

    " Multiple Cursors
    " Plug 'terryma/vim-multiple-cursors'
    " Plug 'tpope/vim-eunuch' " Sugar for unix file shell commands
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'preservim/nerdcommenter'
    " Plug 'brooth/far.vim'
    " Plug 'atishay/far.vim'
    " Plug 'romgrk/lib.kom'
    " Plug 'brooth/far.vim'
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
