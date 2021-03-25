vim.g.startify_custom_header = {
 '   @@@  @@@ @@@  @@@ @@@ @@@@@@@@@@    ',
 '   @@!@!@@@ @@!  @@@ @@! @@! @@! @@!   ',
 '   @!@@!!@! @!@  !@! !!@ @!! !!@ @!@   ',
 '   !!:  !!!  !: .:!  !!: !!:     !!:   ',
 '   ::    :     ::    :    :      :     '
}

vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_session_dir = '~/.config/nvim/session'

vim.api.nvim_exec(
    'let startify_lists = [ { \'type\': \'files\',     \'header\': [\'   Files\'] }, { \'type\': \'sessions\',  \'header\': [\'   Sessions\'] },    { \'type\': \'bookmarks\', \'header\': [\'   Bookmarks\'] },                                                                   ]',
    true)

vim.api.nvim_exec(
    'let startify_bookmarks = [ { \'l\': \'~/notes/linux-setup.md\' }, { \'i\': \'~/.config/nvim/init.lua\' }, { \'s\': \'~/.config/nvim/lua/settings.lua\' }, { \'p\': \'~/.config/nvim/lua/plugins.lua\' }, { \'h\': \'~/.config/nvim/lua/nv-startify/init.lua\' }, { \'k\': \'~/.config/nvim/lua/keymappings.lua\' }, { \'w\': \'~/.config/nvim/vimscript/nv-whichkey/init.vim\' }, { \'r\': \'~/.config/ranger/rc.conf\' }, { \'t\': \'~/notes/todo.md\' }, { \'z\': \'~/.zshrc\' }, { \'a\':  \'~/.oh-my-zsh/custom/aliases.zsh\'}, { \'d\':  \'~/dev\'}, { \'n\': \'~/notes/\' }]',
    true)

vim.cmd([[
function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]])

