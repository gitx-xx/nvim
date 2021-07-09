vim.g.startify_custom_header = {
 '   @@@  @@@ @@@  @@@ @@@ @@@@@@@@@@    ',
 '   @@!@!@@@ @@!  @@@ @@! @@! @@! @@!   ',
 '   @!@@!!@! @!@  !@! !!@ @!! !!@ @!@   ',
 '   !!:  !!!  !: .:!  !!: !!:     !!:   ',
 '   ::    :     ::    :    :      :     '
}

vim.g.startify_disable_at_vimenter = 0
vim.g.webdevicons_enable_startify = 1
vim.g.startify_enable_special = 0
vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_autoload = 1
vim.g.startify_session_delete_buffers = 1
vim.g.startify_change_to_vcs_root = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1
vim.g.startify_tession_dir = '~/.config/nvim/session'
vim.g.startify_lists = {
  { type = 'dir', header = { "   Current Directory "..vim.fn.getcwd()..":" } },
  { type = 'bookmarks', header = { '   Bookmarks' } }
}

vim.g.startify_bookmarks = {
  { i = '~/.config/nvim/init.lua'},
  { s = '~/.config/nvim/lua/settings.lua'},
  { p = '~/.config/nvim/lua/plugins.lua'},
  { h = '~/.config/nvim/lua/nv-startify/init.lua'},
  { k = '~/.config/nvim/lua/keymappings.lua'},
  { w = '~/.config/nvim/lua/lv-which-key/init.lua'},
  { c = '~/.config/nvim/lv-config.lua'},
  { r = '~/.config/ranger/rc.conf'},
  { t = '~/notes/todo.md'},
  { l = '~/notes/linux-setup.md'},
  { a = '~/.oh-my-zsh/custom/aliases.zsh'},
  { z = '~/.zshrc'},
  { d = '~/dev/'},
  { n = '~/notes/'},
}
