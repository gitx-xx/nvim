
-- Global
vim.api.nvim_set_keymap('n', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-w>', ':TZAtaraxis l25 r25<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', ',', ':', {noremap = true, silent = true})
-- Move by visual lines
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})
-- Faster vertical movement
vim.api.nvim_set_keymap('' , 'K', '12k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('' , 'J', '12j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('' , '<M-j>', '}', {noremap = true, silent = true})
vim.api.nvim_set_keymap('' , '<M-k>', '{', {noremap = true, silent = true})
-- <C-q> exits insert mode in terminal
vim.api.nvim_set_keymap('t' , '', '', {noremap = true, silent = true})
-- Custom navigation bindings
vim.api.nvim_set_keymap('' , 'H', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('' , 'L', 'e', {noremap = true, silent = true})
vim.api.nvim_set_keymap('' , 'B', '^', {noremap = true, silent = true}) -- doesn't work with verb
vim.api.nvim_set_keymap('' , 'E', '$', {noremap = true, silent = true}) -- doesn't work with verb
vim.api.nvim_set_keymap('n', 'M', '`', {noremap = true, silent = true}) -- Goto bookmark

-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- TODO fix this
-- Terminal window navigation
vim.cmd [[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]]

-- TODO fix this
-- resize with arrows
if vim.fn.has("mac") == 1 then
  vim.api.nvim_set_keymap("n", "<A-Up>", ":resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Down>", ":resize +2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Left>", ":vertical resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Right>", ":vertical resize +2<CR>", { silent = true })
else
  vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })
end

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- I hate escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious!<CR>", { noremap = true, silent = true })

-- Buffer switching
vim.api.nvim_set_keymap('n', '<C-b>', ':e #<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-b>', '<cmd>BufferPick<cr>', {noremap = true, silent = true})
-- Alternate buffer
vim.api.nvim_set_keymap('n', '§', '<C-^>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
-- vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Move current line / block with Alt-j/k ala vscode.
-- vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "<A-j>", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "<A-k>", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })

-- QuickFix
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[q", ":cprev<CR>", { noremap = true, silent = true })

-- Better nav for omnicomplete
vim.cmd 'inoremap <expr> <c-j> ("\\<C-n>")'
vim.cmd 'inoremap <expr> <c-k> ("\\<C-p>")'

vim.cmd 'vnoremap p "0p'
vim.cmd 'vnoremap P "0P'
-- vim.api.nvim_set_keymap('v', 'p', '"0p', {silent = true})
-- vim.api.nvim_set_keymap('v', 'P', '"0P', {silent = true})

-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

-- Toggle the QuickFix window
vim.api.nvim_set_keymap("", "<C-q>", ":call QuickFixToggle()<CR>", { noremap = true, silent = true })
