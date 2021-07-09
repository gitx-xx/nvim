-- O is the global options object

-- Window settings
vim.wo.scrolloff = 999 -- center cursor

-- General settings
O.leader_key = "space"
O.auto_complete = true
O.clipboard = "unnamedplus" -- allows neovim to access clipboard
O.cmdheight = 2 -- more space in command line
O.relative_number = false
O.colorscheme = "nord"
O.background = "dark"
O.timeoutlen = 200
O.hidden_files = true
O.wrap_lines = false
O.number = true
O.relative_number = true
O.shell = 'zsh'
O.transparent_window = true
-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true
-- Language support
O.lang.lua.autoformat = false
O.lang.lua.formatter = 'lua-format'
O.lang.tsserver.linter = 'eslint'
O.lang.tsserver.formatter = 'prettier'
O.lang.tsserver.autoformat = true
-- O.python.linter = 'flake8'
O.lang.python.formatter = 'black'
O.lang.python.autoformat = true
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
O.lang.json.formatter = 'prettier'
O.lang.json.autoformat = true

-- Builtins
-- After changing plugin config it is recommended to run :PackerCompile
O.plugin.colorizer.active = true
O.plugin.dashboard.active = true
O.plugin.floatterm.active = true
O.plugin.trouble.active = true
O.plugin.zen.active = false -- replaced with TrueZen
-- O.plugin.indent_line = true
-- O.plugin.symbol_outline = true
-- O.plugin.ts_autotag = true
-- O.plugin.ts_context_commentstring = true
-- O.plugin.ts_hintobjects = true
-- O.plugin.ts_playground = true
-- O.plugin.ts_rainbow = true
-- O.plugin.ts_textobjects = true
-- O.plugin.ts_textsubjects = true
-- O.plugin.telescope_fzy = true
-- O.plugin.telescope_project = true

-- TODO: use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
-- Additional Plugins
O.user_plugins = {
    {'tpope/vim-commentary'},
    {'vimwiki/vimwiki'},
    {'tools-life/taskwiki'},
    {'mhinz/vim-startify'},
    {'tpope/vim-surround'},
    {'rbgrouleff/bclose.vim'},
    {'schickling/vim-bufonly'},
    {'kshenoy/vim-signature'},
    {'phaazon/hop.nvim'},
    {'airblade/vim-rooter'},
    {'voldikss/vim-floaterm'},
    {'kdheepak/lazygit.nvim'},
    {'kevinhwang91/rnvimr'},
    {'rhysd/clever-f.vim'},
    {'shaunsingh/nord.nvim'},
    {'shaunsingh/solarized.nvim'},
    {'sudormrfbin/cheatsheet.nvim'},
    {"Pocco81/TrueZen.nvim"},
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
O.user_autocommands = {
  {'FileType', 'vimwiki.markdown', 'setlocal nowrap nospell'}, -- Markdown
  {'TermOpen', '*', 'setlocal nonumber norelativenumber'},
  {'TermOpen', '*', 'startinsert'},
  {'BufWritePre', 'vimwiki.markdown', '%s/\\s\\+$//e|g/./s/$/  /|norm!``'}, -- add linebreaks
  {'VimEnter', '*', 'TZMinimalist'}, -- TrueZen by default
}

-- Bindings

-- Global
vim.api.nvim_set_keymap('n', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-w>', ':TZAtaraxis l25 r25<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-m>', ':TZMinimalist<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'Q', 'q', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'q', '<NOP>', {noremap = true, silent = true})
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
-- I hate escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })
-- Tab switch buffer
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-x>", ":BufferClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>", ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", ":BufferPrevious<CR>", { noremap = true, silent = true })
-- Buffer switching
vim.api.nvim_set_keymap('n', '<C-b>', ':e #<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-b>', '<cmd>BufferPick<cr>', {noremap = true, silent = true})
-- Alternate buffer
vim.api.nvim_set_keymap('n', '§', '<C-^>', {noremap = true, silent = true})


-- WhichKey
vim.api.nvim_set_keymap("n", "<leader>h", ":Startify<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>d", ":Telescope lsp_workspace_diagnostics<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>r", ":RnvimrToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>v", "<C-W>v", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>s", "<C-W>s", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>x", ":BufferClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', "<leader>z", "<NOP>", {noremap = true, silent = true})
O.user_which_key = {
  h = {":Startify<CR>", "Startify"},
  d = {":Telescope lsp_workspace_diagnostics<CR>", "Diagnostics"},
  r = {":RnvimrToggle<CR>", "Ranger"},
  v = {"<C-W>v", "SplitV"},
  s = {"<C-W>s", "SplitS"},
  x = {":BufferClose<CR>", "Close Buffer"},
  F = {"<cmd>lua require'telescope.builtin'.find_files{search_dirs={'~/dev', '~/notes'}}<cr>", "Find"},
	b = {
		name = "+Buffer",
		d = {"<cmd>bdelete<cr>", "delete"},
		D = {"<cmd>bdelete!<cr>", "delete!"},
		e = {"<cmd>enew<cr>", "new-buffer"},
		o = {"<cmd>Bonly<cr>", "delete-other!"},
		n = {"<cmd>bnext<cr>", "next-buffer"},
		N = {"<cmd>enew<cr>", "new-buffer"},
		p = {"<cmd>bprevious<cr>", "prev-buffer"},
		B = {"<cmd>BufferPick<cr>", "pick-buffer"},
        b = { "<cmd>Telescope buffers<cr>", "telescope-buffer" },
	},
  D = {
        name = "+Diagnostics",
        t = {"<cmd>TroubleToggle<cr>", "trouble"},
        w = {"<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace"},
        d = {"<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document"},
        q = {"<cmd>TroubleToggle quickfix<cr>", "quickfix"},
        l = {"<cmd>TroubleToggle loclist<cr>", "loclist"},
        r = {"<cmd>TroubleToggle lsp_references<cr>", "references"},
    },
    f = {
        name = "+Find",
        a = {"<cmd>Telescope lsp_code_actions<cr>", "Actions"},
        b = {"<cmd>Telescope buffers<cr>", "Buffers"},
        c = {"<cmd>Telescope commands<cr>", "Commands"},
        C = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        F = {"<cmd>lua require'telescope.builtin'.find_files{search_dirs={'~/dev', '~/notes'}}<cr>", "Find File"},
        g = {"<cmd>Telescope git_files<cr>", "Find file (git)"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        o = {"<cmd>Telescope vim_options<cr>", "Options"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        p = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        x = {"<cmd>Telescope spell_suggest<cr>", "Spelling"},
        s = {"<cmd>Telescope spell_suggest<cr>", "Spelling"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"},
        s = {"<cmd> Telescope lsp_document_symbols<cr>", "Document Symbol"},
        S = {"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Document Symbol"},
    },
    g = {
        name = "+Git",
        j = {"<cmd>NextHunk<cr>", "Next Hunk"},
        k = {"<cmd>PrevHunk<cr>", "Prev Hunk"},
        p = {"<cmd>PreviewHunk<cr>", "Preview Hunk"},
        r = {"<cmd>ResetHunk<cr>", "Reset Hunk"},
        R = {"<cmd>ResetBuffer<cr>", "Reset Buffer"},
        s = {"<cmd>StageHunk<cr>", "Stage Hunk"},
        u = {"<cmd>UndoStageHunk<cr>", "Undo Stage Hunk"},
        l = {"<cmd>LazyGit<cr>", "LazyGit"},
        o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
        b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
        c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
        C = {"<cmd>Telescope git_bcommits<cr>", "Checkout commit(for current file)"},
    },
    l = {
        name = "+LSP",
        a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = { "<cmd>Neoformat<cr>", "Format" },
        i = {"<cmd>Telescope lsp_implementations<cr>", "Implementations"},
        I = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        j = { "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<cr>", "Next Diagnostic" },
        k = { "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<cr>", "Prev Diagnostic" },
        L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        R = {"<cmd>Telescope lsp_references<cr>", "References"},
        r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
        t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
        x = {"<cmd>cclose<cr>", "Close Quickfix"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols"}
    },
    m = {
        name = "+Mark",
        t = {"<cmd>BookmarkToggle<cr>", "Toggle"},
        n = {"<cmd>BookmarkNext<cr>", "Next"},
        p = {"<cmd>BookmarkPrev<cr>", "Prev"},
    },
    u = {
        name = "+Update",
        t = {"<cmd>TSUpdate<cr>", "Treesitter"},
        p = {"<cmd>PackerUpdate<cr>", "Plugins"},
        r = {"<cmd>lua require('lv-utils').reload_lv_config()<cr>", "Reload" },
        s = {"<cmd>luafile $MYVIMRC<cr>", "Source"},
    },
    R = {
        name = "+Find_Replace",
        f = {"<cmd>Farr --source=vimgrep<cr>", "file"},
        p = {"<cmd>Farr --source=rgnvim<cr>", "project"},
    },
    t = {
        name = "+Toggle",
        w = {"<cmd>set nowrap!<cr>", "wrap"},
        h = {"<cmd>set hlsearch!<cr>", "search highlight"},
        z = {"<cmd>TZAtaraxis l25 r25<cr>", "zen"},
        t = {"<cmd>TZTop<cr>", "bufferline"},
        l = {"<cmd>TZLeft<cr>", "gutter"},
        m = {"<cmd>TZMinimalist<cr>", "minimalist"},
    },
    w = {
        name = "+Wiki",
        a = {"<cmd>TaskWikiAnnotate<cr>", "annotate-task"},
        b = {"<cmd>VimwikiBacklinks<cr>", "backlinks"},
        d = {"<cmd>TaskWikiDone<cr>", "done-task"},
        e = {"<cmd>TaskWikiEdit<cr>", "edit-task"},
        l = {"<cmd>TaskWikiLink<cr>", "link-task"},
        m = {"<cmd>TaskWikiMod<cr>", "mod-task"},
        p = {"<cmd>TaskWikiChooseProject<cr>", "project-task"},
        r = {"<cmd>VimwikiRenameFile<cr>", "rename"},
        s = {"<cmd>TaskWikiStart<cr>", "start-task"},
        S = {"<cmd>TaskWikiStop<cr>", "stop-task"},
        t = {"<cmd>e ~/notes/todo.md<cr>", "todo"},
        w = {"<cmd>VimwikiIndex<cr>", "index"},
        x = {"<cmd>TaskWikiDelete<cr>", "delete-task"},
    },
}
