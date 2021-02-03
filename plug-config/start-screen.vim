
let g:startify_custom_header = [
        \ '        _   ___    ________          __   ',
        \ '       / | / / |  / / ____/___  ____/ /__ ',
        \ '      /  |/ /| | / / /   / __ \/ __  / _ \',
        \ '     / /|  / | |/ / /___/ /_/ / /_/ /  __/',
        \ '    /_/ |_/  |___/\____/\____/\__,_/\___/ ',
        \]
                                      
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]
          " \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'l': '~/notes/linux-setup.md' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 's': '~/.config/nvim/general/settings.vim' },
            \ { 'S': '~/.config/nvim/snips/' },
            \ { 'p': '~/.config/nvim/vim-plug/plugins.vim' },
            \ { 'r': '~/.config/nvim/plug-config/start-screen.vim' },
            \ { 'k': '~/.config/nvim/keys/mappings.vim' },
            \ { 'w': '~/.config/nvim/keys/which-key.vim' },
            \ { 'c': '~/.config/nvim/coc-settings.json' },
            \ { 'c': '~/.config/ranger/ranger.rc' },
            \ { 't': '~/notes/todo.md' },
            \ { 'z': '~/.zshrc' },
            \ { 'a':  '~/.oh-my-zsh/custom/aliases.zsh'},
            \ { 'd':  '~/dev'},
            \ { 'n': '~/notes/' },
            \ ]

let g:startify_enable_special = 0  " hide option for empty buffer and quit
