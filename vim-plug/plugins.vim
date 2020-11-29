" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'tpope/vim-commentary' " Better Comments
    " Plug 'tpope/vim-speeddating' " Change dates fast
    " Plug 'glts/vim-radical' " Convert binary, hex, etc..
    Plug 'tpope/vim-repeat' " Repeat stuff
    Plug 'unblevable/quick-scope' " Text Navigation
    Plug 'suy/vim-context-commentstring' " Useful for React Commenting 
    " Plug 'RRethy/vim-illuminate' " highlight all matches under cursor

  if exists('g:vscode')
    " Plug 'asvetliakov/vim-easymotion' " Easy motion for VSCode
    Plug 'ChristianChiarulli/vscode-easymotion' " Custom version for VSCode
    Plug 'machakann/vim-highlightedyank'
  else
    Plug 'liuchengxu/vim-which-key' " See what keys do like in emacs
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " FZF
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
    Plug 'junegunn/fzf.vim'
    Plug 'vimwiki/vimwiki' " Vim Wiki
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intellisense
    Plug 'mhinz/vim-startify' " Start Screen
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  } " Markdown Preview
    Plug 'voldikss/vim-floaterm' " Terminal
    Plug 'easymotion/vim-easymotion' " Easymotion
    Plug 'justinmk/vim-sneak' " Sneak

    " Evalute these:
    Plug 'kevinhwang91/rnvimr' " Ranger in a floating window 
    Plug 'junegunn/goyo.vim' " Distraction-free writing
    Plug 'airblade/vim-rooter' " Auto-change project root
    Plug 'airblade/vim-gitgutter' " Git
    Plug 'alvan/vim-closetag' " Auto close html tags
    Plug 'ChristianChiarulli/far.vim' " Find and replace
    Plug 'AndrewRadev/tagalong.vim' " Auto change html tags
    Plug 'turbio/bracey.vim' " live server
    Plug 'skywind3000/asynctasks.vim' " " async tasks
    Plug 'skywind3000/asyncrun.vim'
    Plug 'wesQ3/vim-windowswap' " Swap windows
    Plug 'puremourning/vimspector' " Debugging

    Plug 'tpope/vim-surround' " Surround
    Plug 'kyazdani42/nvim-web-devicons' " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    Plug 'christianchiarulli/nvcode-color-schemes.vim' " Themes
    Plug 'tpope/vim-sleuth' " auto set indent settings
    Plug 'sheerun/vim-polyglot' " Better Syntax Support
    Plug 'nvim-treesitter/nvim-treesitter' " Treesitter
    Plug 'nvim-treesitter/playground'
    Plug 'jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
    Plug 'glepnir/galaxyline.nvim' " Status Line
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'liuchengxu/vista.vim' " Vista
    Plug 'honza/vim-snippets' " Snippets
    Plug 'mattn/emmet-vim' 
    Plug 'romgrk/barbar.nvim' " Better tabline
    Plug 'mbbill/undotree' " undo time travel
    Plug 'psliwka/vim-smoothie' " Smooth scroll
    Plug 'mattn/vim-gist' " Easily Create Gists
    Plug 'mattn/webapi-vim'
    Plug 'norcalli/nvim-colorizer.lua' " Colorizer
    Plug 'moll/vim-bbye' " Intuitive buffer closing
    Plug 'szw/vim-maximizer'

    " Plug 'luochen1990/rainbow' " Rainbow brackets
    " Async Linting Engine
    " TODO make sure to add ale config before plugin
    " Plug 'dense-analysis/ale'
    
    " Multiple Cursors
    " TODO add this back in change from C-n
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'jelera/vim-javascript-syntax'
    " Plugin Graveyard

    " Debug
    " Plug 'mfussenegger/nvim-dap'
    " Plug 'nvim-dap-virtual-text'
    
    " Plug 'nvim-treesitter/nvim-treesitter-refactor'
    " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    " Plug 'romgrk/nvim-treesitter-context'
    " Minimap
    " Plug 'wfxr/minimap.vim'
    " jsx syntax support
    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'
    " Multiple Cursors
    " Plug 'terryma/vim-multiple-cursors'
    " Plug 'kaicataldo/material.vim'
    " Plug 'tomasiser/vim-code-dark'
    " Plug 'mg979/vim-xtabline'
    " Files
    " Plug 'tpope/vim-eunuch'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    " Making stuff
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'preservim/nerdcommenter'
    " Plug 'brooth/far.vim'
    " Plug 'atishay/far.vim'
    " Plug 'romgrk/lib.kom'
    " Plug 'brooth/far.vim'
    " Debugging
  endif

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
