-- Hop (easymotion alternative)
-- https://github.com/phaazon/hop.nvim

require'hop'.setup { keys = 'sadfjklewcmpgh', term_seq_bias = 0.5 }

vim.api.nvim_set_keymap('', 's', ":HopChar1<cr>", {silent = true})
vim.api.nvim_set_keymap('', 'S', ":HopPattern<cr>", {silent = true})
