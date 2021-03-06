
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆', " ": 'SPC'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['h'] = [ ':Startify'                                       , 'startify']
let g:which_key_map['d'] = [ ':Telescope lsp_workspace_diagnostics'   , 'diagnostics' ]
" let g:which_key_map['o'] = [ ':CocList outline'   , 'outline' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'vsplit']
let g:which_key_map['s'] = [ '<C-W>s'                                          , 'hsplit']
" let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
" let g:which_key_map['a'] = [ '<Plug>(coc-codeaction-selected)', 'actions' ]
let g:which_key_map['"'] = [ '<Plug>PeekupOpen'                                , 'registers' ]
let g:which_key_map['*'] = [ ':DogeGenerate'                                   , 'documentation generator' ]

" . is for emmet
let g:which_key_map['.'] = {
      \ 'name' : '+emmet' ,
      \ ',' : ['<Plug>(emmet-expand-abbr)'               , 'expand abbr'],
      \ ';' : ['<plug>(emmet-expand-word)'               , 'expand word'],
      \ 'u' : ['<plug>(emmet-update-tag)'                , 'update tag'],
      \ 'd' : ['<plug>(emmet-balance-tag-inward)'        , 'balance tag in'],
      \ 'D' : ['<plug>(emmet-balance-tag-outward)'       , 'balance tag out'],
      \ 'n' : ['<plug>(emmet-move-next)'                 , 'move next'],
      \ 'N' : ['<plug>(emmet-move-prev)'                 , 'move prev'],
      \ 'i' : ['<plug>(emmet-image-size)'                , 'image size'],
      \ '/' : ['<plug>(emmet-toggle-comment)'            , 'toggle comment'],
      \ 'j' : ['<plug>(emmet-split-join-tag)'            , 'split join tag'],
      \ 'k' : ['<plug>(emmet-remove-tag)'                , 'remove tag'],
      \ 'a' : ['<plug>(emmet-anchorize-url)'             , 'anchorize url'],
      \ 'A' : ['<plug>(emmet-anchorize-summary)'         , 'anchorize summary'],
      \ 'm' : ['<plug>(emmet-merge-lines)'               , 'merge lines'],
      \ 'c' : ['<plug>(emmet-code-pretty)'               , 'code pretty'],
      \ }

" a is for actions
let g:which_key_map.A = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'i' : [':IndentBlanklineToggle'  , 'toggle indent lines'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ }
      " \ 'l' : [':Bracey'                 , 'start live server'],
      " \ 'L' : [':BraceyStop'             , 'stop live server'],

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ 'd' : [':bdelete'               , 'delete-buffer'],
      \ 'D' : [':bdelete!'              , 'delete-buffer!'],
      \ 'o' : [':Bonly'                 , 'delete-other'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'N' : [':enew'                  , 'new-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ }

" u is for update
let g:which_key_map.u = {
      \ 'name': '+update',
      \ 's' : [':luafile $MYVIMRC', 'source init.lua'],
      \ 't' : [':TSUpdate', 'treesitter'],
      \ 'p' : [':PackerUpdate', 'plugins'],
      \ }

" F is for fold
let g:which_key_map.F = {
    \ 'name': '+fold',
    \ 'O' : [':set foldlevel=20'  , 'open all'],
    \ 'C' : [':set foldlevel=0'   , 'close all'],
    \ 'c' : [':foldclose'         , 'close'],
    \ 'o' : [':foldopen'          , 'open'],
    \ '1' : [':set foldlevel=1'   , 'level1'],
    \ '2' : [':set foldlevel=2'   , 'level2'],
    \ '3' : [':set foldlevel=3'   , 'level3'],
    \ '4' : [':set foldlevel=4'   , 'level4'],
    \ '5' : [':set foldlevel=5'   , 'level5'],
    \ '6' : [':set foldlevel=6'   , 'level6']
    \ }

" m is for mark
" I'd rather use regular marks but they never clear
let g:which_key_map.m = {
\ 'name': '+mark',
    \ 't' : [':BookmarkToggle'   , 'toggle'],
    \ 'j' : [':BookmarkNext'   , 'next mark'],
    \ 'k' : [':BookmarkPrev'   , 'prev mark']
    \ }

" f is for find powered by telescope
let g:which_key_map.f = {
      \ 'name' : '+search' ,
      \ '.' : [':Telescope filetypes'                   , 'filetypes'],
      \ 'B' : [':Telescope git_branches'                , 'git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'files'],
      \ 'h' : [':Telescope command_history'             , 'history'],
      \ 'i' : [':Telescope media_files'                 , 'media files'],
      \ 'm' : [':Telescope marks'                       , 'marks'],
      \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
      \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
      \ 't' : [':Telescope live_grep'                   , 'text'],
      \ 'r' : [':Telescope registers'                   , 'registers'],
      \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
      \ 'u' : [':Telescope colorscheme'                 , 'colorschemes'],
      \ }

" w is for wiki
let g:which_key_map.w = {
      \ 'name' : '+wiki' ,
      \ 'w' : ['<Plug>VimwikiIndex'                   , 'index wiki'],
      \ 'r' : ['<Plug>VimwikiRenameFile'              , 'rename wiki'],
      \ 'a' : [':TaskWikiAnnotate'              , 'annotate task'],
      \ 'd' : [':TaskWikiDone'              , 'done task'],
      \ 'e' : [':TaskWikiEdit'              , 'edit task'],
      \ 'x' : [':TaskWikiDelete'              , 'delete task'],
      \ 'l' : [':TaskWikiLink'              , 'link task'],
      \ 'm' : [':TaskWikiMod'              , 'mod task'],
      \ 's' : [':TaskWikiStart'              , 'start task'],
      \ 'S' : [':TaskWikiStop'              , 'stop task'],
      \ 'p' : [':TaskWikiChooseProject'              , 'change project'],
      \ }

" S is for Session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad default'           , 'Load Default']     ,
      \ 'L' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':SSave! default'           , 'Save Default']   ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ 'H' : [':Startify'        , 'Start Page']     ,
      \ }

" t is for toggle
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ 'w' : [':set nowrap!'                 , 'word wrap'],
      \ 'g' : [':Goyo'                        , 'Goyo'],
      \ 's' : [':CocCommand cSpell.toggleEnableSpellChecker' , 'cSpell'],
      \ 'b' : [':call ToggleBackground()' , 'background'],
      \ 't' : [':call ToggleClutter()' , 'clutter'],
      \ 'c' : [':call ConcealLevel()' , 'conceal'],
      \ 'h' : [':set hlsearch!' , 'highlight'],
      \ 'u' : [":execute 'topleft' ((&columns - &textwidth) / 2 - 1) . 'vsplit _paddding_' | wincmd p", 'centered split'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'j' : [':NextHunk'                         , 'next hunk'],
      \ 'k' : [':PrevHunk'                         , 'prev hunk'],
      \ 'L' : [':Git log'                          , 'log'],
      \ 'l' : [':FloatermNew lazygit'              , 'lazygit'],
      \ 'n' : [':Neogit'                           , 'neogit'],
      \ 'p' : [':PreviewHunk'                      , 'preview hunk'],
      \ 'r' : [':ResetHunk'                        , 'reset hunk'],
      \ 'R' : [':ResetBuffer'                      , 'reset buffer'],
      \ 's' : [':StageHunk'                        , 'stage hunk'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ 'u' : [':UndoStageHunk'                    , 'undo stage hunk'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':Lspsaga rename'                     , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
      " \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],
      " \ 'o' : [':Vista!!'                            , 'outline'],

let g:which_key_map.R = {
      \ 'name' : '+Find_Replace' ,
      \ 'f' : [':Farr --source=vimgrep'    , 'file'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

call which_key#register('<Space>', "g:which_key_map")
