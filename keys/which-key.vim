" Leader Key Maps
let @s = 'veS"'
let g:which_key_timeout = 100 " Timeout
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
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
let g:which_key_map['c'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['C'] = [ ':CocList commands'                               , 'commands ...' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ ':Startify'                                       , 'startify']
let g:which_key_map['d'] = [ ':CocList diagnostics'   , 'diagnostics' ]
let g:which_key_map['o'] = [ ':CocList outline'   , 'outline' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
let g:which_key_map['a'] = [ '<Plug>(coc-codeaction-selected)', 'actions' ]

" Group mappings

" a is for actions
let g:which_key_map.A = {
      \ 'name' : '+actions' ,
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ }
      " \ 'p' : [':Helptags'              , 'help tags'] ,
      " \ 'M' : [':Maps'                  , 'normal maps'] ,

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':Bdelete!'              , 'delete-buffer!'],
      \ 'o' : [':Bonly'                 , 'delete-other'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'N' : [':enew'                  , 'new-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'b' : ['Buffers'                , 'fzf-buffer'],
      \ }

" d is for debug
" let g:which_key_map.d = {
      " \ 'name' : '+debug' ,
      " \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      " \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      " \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      " \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      " \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      " \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      " \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      " \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      " \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      " \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      " \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      " \ }

" u is for update

let g:which_key_map.u = {
      \ 'name': '+update',
      \ 's' : [':source $MYVIMRC', 'source init.vim'],
      \ 't' : [':TSUpdate', 'treesitter'],
      \ 'c' : [':CocUpdate', 'coc'],
      \ 'p' : [':PlugUpdate', 'plug'],
      \ }

" " f is for find
let g:which_key_map.f = {
      \ 'name' : '+find' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'L' : [':CocCommand fzf-preview.BufferLines'                , 'current buffer'],
      \ 'B' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'F' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'G' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'D' : [':CocCommand fzf-preview.DirectoryFiles'              , 'directories'],
      \ 'M' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
      \ 'w' : [':CocSearch <C-R>=expand("<cword>")<CR><CR>', 'CoCSearch Word'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'r' : [':Rg'                    , 'text Rg'],
      \ 'l' : [':BLines'                , 'current buffer'],
      \ 'b' : [':Buffers'               , 'open buffers'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ 'f' : [':Files'                 , 'files'],
      \ 'm' : [':Marks'                 , 'marks'] ,
      \ 't' : [':Tags'                  , 'project tags'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 's' : [':CocList snippets'      , 'snippets'],
      \ }
      " \ 'l' : [':Lines'                 , 'lines'] ,
      " \ 'h' : [':History'               , 'file history'],
      " \ 'H' : [':History:'              , 'command history'],
      " \ 'g' : [':GFiles'                , 'git files'],
      " \ 'G' : [':GFiles?'               , 'modified git files'],
      " \ 'c' : [':Commits'               , 'commits'],
      " \ 'C' : [':BCommits'              , 'buffer commits'],
      " \ 's' : [':Snippets'     , 'snippets'],

" :CocCommand fzf-preview.AllBuffers
" :CocCommand fzf-preview.Changes
" :CocCommand fzf-preview.Yankround
" :CocCommand fzf-preview.CocReferences
" :CocCommand fzf-preview.CocDiagnostics
" :CocCommand fzf-preview.CocCurrentDiagnostics
" :CocCommand fzf-preview.CocTypeDefinitions

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
      \ 't' : [':CocCommand cSpell.toggleEnableSpellChecker' , 'cSpell'],
      \ 'b' : [':call ToggleBackground()' , 'background'],
      \ 'b' : [':call ToggleStatusline()' , 'statusline'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add %'                        , 'add'],
      \ 'A' : [':Git add .'                        , 'add all'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':GGrep'                            , 'git grep'],
      \ 'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
      \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
      \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
      \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
      \ 'l' : [':FloatermNew lazygit'              , 'lazygit'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
      \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
      \ 'S' : [':CocCommand fzf-preview.GitStatus' , 'status'],
      \ }
      " \ 'S' : [':!git status'                      , 'status'],

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'i' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ }
      " \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],

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

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
