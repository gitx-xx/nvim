require "default-config"
require "keymappings"
vim.cmd("luafile " .. CONFIG_PATH .. "/lv-config.lua")
require "settings"
require "plugins"
require "lv-utils"
require "lv-galaxyline"
require "lv-treesitter"
require "lv-which-key"
require "lv-neoformat"
if O.plugin.dashboard.active then
  require("lv-dashboard").config()
end
-- TODO these gues need to be in language files
-- require "lsp"
-- if O.lang.emmet.active then
--   require "lsp.emmet-ls"
-- end
-- if O.lang.tailwindcss.active then
--   require "lsp.tailwindcss-ls"
-- end

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

