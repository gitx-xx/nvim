-- Hop (easymotion alternative)
-- https://github.com/phaazon/hop.nvim

-- layouts to try
-- asdghklqwertyuiopzxcvbnmfj
-- etovxqpdygfblzhckisuran
-- sadfjklewcmpgh
require'hop'.setup { keys = 'asdghklqwertyuiopzxcvbnmfj', term_seq_bias = 0.5 }

vim.api.nvim_set_keymap('', 's', ":HopChar2<cr>", {silent = true})
vim.api.nvim_set_keymap('', 'S', ":HopPattern<cr>", {silent = true})

