" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['c'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['C'] = [ ':CocList commands'                               , 'commands ...' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['d'] = [ ':CocList diagnostics'   , 'diagnostics' ]
let g:which_key_map['o'] = [ ':CocList outline'   , 'outline' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                                   , 'open' ]
let g:which_key_map['p'] = [ ':Files'                                          , 'search files' ]
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right']
let g:which_key_map['W'] = [ ':call WindowSwap#EasyWindowSwap()'               , 'move window' ]
let g:which_key_map['z'] = [ 'Goyo'                                            , 'zen' ]
let g:which_key_map['h'] = [ ':Startify'                                       , 'startify']
" Group mappings

" a is for actions
let g:which_key_map.a = {
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
      \ '1' : [':BufferGoto 1'          , 'buffer 1'],
      \ '2' : [':BufferGoto 2'          , 'buffer 2'],
      \ '3' : [':BufferGoto 3'          , 'buffer 3'],
      \ '4' : [':BufferGoto 4'          , 'buffer 4'],
      \ '5' : [':BufferGoto 5'          , 'buffer 5'],
      \ '6' : [':BufferGoto 6'          , 'buffer 6'],
      \ '7' : [':BufferGoto 7'          , 'buffer 7'],
      \ '8' : [':BufferGoto 8'          , 'buffer 8'],
      \ '9' : [':BufferGoto 9'          , 'buffer 9'],
      \ '0' : [':BufferGoto 0'          , 'buffer 0'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':Bdelete'               , 'delete-buffer'],
      \ 'D' : [':Bdelete!'              , 'delete-buffer!'],
      \ 'o' : [':BufferOrderByLanguage' , 'order by language'],
      \ 'O' : [':BufferOrderByDirectory', 'order by directory'],
      \ 'n' : ['bnext'                  , 'next-buffer'],
      \ 'p' : ['bprevious'              , 'previous-buffer'],
      \ 'B' : ['Buffers'                , 'fzf-buffer'],
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

" f is for find and replace
let g:which_key_map.f = {
      \ 'name' : '**FREE**' ,
      \ }

" m is for mark
let g:which_key_map.m = {
      \ 'name' : '+mark' ,
      \ 'c' : [':CocCommand bookmark.clearForCurrentFile', 'clear file'],
      \ 'C' : [':CocCommand bookmark.clearForAllFiles', 'clear project'],
      \ 'j' : [':CocCommand bookmark.next', 'next bookmark'],
      \ 'k' : [':CocCommand bookmark.prev', 'prev bookmark'],
      \ 't' : [':CocCommand bookmark.toggle', 'toggle bookmark'],
      \ }

" " s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ ';' : [':Commands'              , 'commands'],
      \ 'l' : [':CocCommand fzf-preview.BufferLines'                , 'current buffer'],
      \ 'b' : [':CocCommand fzf-preview.Buffers'               , 'open buffers'],
      \ 'f' : [':CocCommand fzf-preview.ProjectFiles'                 , 'files'],
      \ 'g' : [':CocCommand fzf-preview.GitFiles'                , 'git files'],
      \ 'd' : [':CocCommand fzf-preview.DirectoryFiles'              , 'directories'],
      \ 'm' : [':CocCommand fzf-preview.Bookmarks', 'list bookmarks'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'r' : [':Rg'                    , 'text Rg'],
      \ 'L' : [':BLines'                , 'current buffer'],
      \ 'B' : [':Buffers'               , 'open buffers'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ 'F' : [':Files'                 , 'files'],
      \ 'M' : [':Marks'                 , 'marks'] ,
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

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ }
      " \ 'm' : [':MaximizerToggle'                     , 'maximize window'],

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
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
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'S' : [':!git status'                      , 'status'],

" let g:which_key_map.G = {
      " \ 'name' : '+gist' ,
      " \ 'a' : [':Gist -a'                          , 'post gist anon'],
      " \ 'b' : [':Gist -b'                          , 'post gist browser'],
      " \ 'd' : [':Gist -d'                          , 'delete gist'],
      " \ 'e' : [':Gist -e'                          , 'edit gist'],
      " \ 'l' : [':Gist -l'                          , 'list public gists'],
      " \ 's' : [':Gist -ls'                         , 'list starred gists'],
      " \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      " \ 'p' : [':Gist -P'                          , 'post public gist '],
      " \ 'P' : [':Gist -p'                          , 'post private gist '],
      " \ }

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
      \ 'w' : ['<Plug>VimwikiIndex'                              , 'index'],
      \ }

" Global
" <Plug>VimwikiIndex
" <Plug>VimwikiTabIndex
" <Plug>VimwikiUISelect
" <Plug>VimwikiDiaryIndex
" <Plug>VimwikiMakeDiaryNote
" <Plug>VimwikiTabMakeDiaryNote
" <Plug>VimwikiMakeYesterdayDiaryNote
" <Plug>VimwikiMakeTomorrowDiaryNote

" " Local
" <Plug>Vimwiki2HTML
" <Plug>Vimwiki2HTMLBrowse
" <Plug>VimwikiDiaryGenerateLinks
" <Plug>VimwikiFollowLink
" <Plug>VimwikiSplitLink
" <Plug>VimwikiVSplitLink
" <Plug>VimwikiTabnewLink
" <Plug>VimwikiGoBackLink
" <Plug>VimwikiNextLink
" <Plug>VimwikiPrevLink
" <Plug>VimwikiGoto
" <Plug>VimwikiDeleteLink
" <Plug>VimwikiRenameLink
" <Plug>VimwikiAddHeaderLevel

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
