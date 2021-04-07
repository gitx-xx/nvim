vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Global
vim.api.nvim_set_keymap('n', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-w>', ':Goyo<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w<CR>', {noremap = true, silent = true})

-- Move by visual lines
vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true, silent = true})

-- Faster vertical movement
vim.api.nvim_set_keymap('n', 'K', '12k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'J', '12j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'K', '12k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'J', '12j', {noremap = true, silent = true})

-- Custom navigation bindings
vim.api.nvim_set_keymap('n', 'H', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'L', 'e', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'B', '^', {noremap = true, silent = true}) -- doesn't work with verb
vim.api.nvim_set_keymap('n', 'E', '$', {noremap = true, silent = true}) -- doesn't work with verb
vim.api.nvim_set_keymap('v', 'H', 'b', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'L', 'e', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', 'B', '^', {noremap = true, silent = true}) -- doesn't work with verb
vim.api.nvim_set_keymap('v', 'E', '$', {noremap = true, silent = true}) -- doesn't work with verb

vim.api.nvim_set_keymap('n', 'M', '`', {noremap = true, silent = true}) -- doesn't work with verb

-- no hl
-- conflicts with which-key
-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
--vim.cmd([[
  --tnoremap <C-h> <C-\><C-N><C-w>h
  --tnoremap <C-j> <C-\><C-N><C-w>j
  --tnoremap <C-k> <C-\><C-N><C-w>k
  --tnoremap <C-l> <C-\><C-N><C-w>l
  --inoremap <C-h> <C-\><C-N><C-w>h
  --inoremap <C-j> <C-\><C-N><C-w>j
  --inoremap <C-k> <C-\><C-N><C-w>k
  --inoremap <C-l> <C-\><C-N><C-w>l
  --tnoremap <Esc> <C-\><C-n>
--]])

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious!<CR>', {noremap = true, silent = true})
-- Disabled from nv-barbar
-- vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
-- vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])
