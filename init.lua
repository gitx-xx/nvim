require "default-config"
require "keymappings"
local status_ok, _ = pcall(vim.cmd, "luafile " .. CONFIG_PATH .. "/lv-config.lua")
if not status_ok then
  print "something is wrong with your lv-config"
end
require "plugins"
vim.g.colors_name = O.colorscheme -- Colorscheme must get called after plugins are loaded or it will break new installs.
require "settings"
require "lv-utils"

-- TODO: these guys need to be in language files
-- require "lsp"
-- if O.lang.emmet.active then
--   require "lsp.emmet-ls"
-- end
-- if O.lang.tailwindcss.active then
--   require "lsp.tailwind

-- Custom plugin settings
require('lv-clever-f')
require('lv-hop')
require('nv-truezen')
require('nv-floaterm')
require('nv-neovide')
require('nv-startify')
require('nv-surround')
require('nv-taskwiki')
require('nv-vim-rooter')
require('nv-vimwiki')
