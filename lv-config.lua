-- O is the global options object


-- From old settings.lua
-- opt.backup = false -- creates a backup file
-- opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
-- opt.colorcolumn = "99999" -- fix indentline for now
-- opt.completeopt = { "menuone", "noselect" }
-- opt.conceallevel = 0 -- so that `` is visible in markdown files
-- opt.fileencoding = "utf-8" -- the encoding written to a file
-- opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
-- opt.hidden = O.hidden_files -- required to keep multiple buffers and open multiple buffers
-- opt.hlsearch = O.hl_search -- highlight all matches on previous search pattern
-- opt.ignorecase = O.ignore_case -- ignore case in search patterns
-- opt.mouse = "a" -- allow the mouse to be used in neovim
-- opt.pumheight = 10 -- pop up menu height
-- opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- opt.showtabline = 2 -- always show tabs
-- opt.smartcase = O.smart_case -- smart case
-- opt.smartindent = true -- make indenting smarter again
-- opt.splitbelow = true -- force all horizontal splits to go below current window
-- opt.splitright = true -- force all vertical splits to go to the right of current window
-- opt.swapfile = false -- creates a swapfile
-- opt.termguicolors = true -- set term gui colors (most terminals support this)
-- opt.timeoutlen = O.timeoutlen -- time to wait for a mapped sequence to complete (in milliseconds)
-- opt.title = true -- set the title of window to the value of the titlestring
-- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
-- opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
-- opt.undofile = true -- enable persisten undo
-- opt.updatetime = 300 -- faster completion
-- opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- opt.expandtab = true -- convert tabs to spaces
-- opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
-- opt.shortmess:append "c"
-- opt.tabstop = 4 -- insert 4 spaces for a tab
-- opt.cursorline = O.cursorline -- highlight the current line
-- opt.number = O.number -- set numbered lines
-- opt.relativenumber = O.relative_number -- set relative numbered lines
-- opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
-- opt.wrap = O.wrap_lines -- display lines as one long line

-- general
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

-- After changing plugin config it is recommended to run :PackerCompile
-- O.plugin.symbol_outline = true
O.indent_line = true
O.plugin.colorizer.active = true
O.plugin.dashboard.active = true
O.plugin.floatterm.active = true
O.plugin.trouble.active = true
O.plugin.zen.active = true
O.symbol_outline = true
O.telescope_fzy = true
O.telescope_project = true
O.ts_autotag = true
O.ts_context_commentstring = true
O.ts_hintobjects = true
O.ts_playground = true
O.ts_rainbow = true
O.ts_textobjects = true
O.ts_textsubjects = true



-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true

-- lua
O.lang.lua.autoformat = false
O.lang.lua.formatter = 'lua-format'

-- javascript
O.lang.tsserver.linter = 'eslint'
O.lang.tsserver.formatter = 'prettier'
O.lang.tsserver.autoformat = true

-- python
-- O.python.linter = 'flake8'
O.lang.python.formatter = 'black'
O.lang.python.autoformat = true
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- json
O.lang.python.formatter = 'prettier'
O.lang.python.autoformat = true

-- use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}

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
    {
      "Pocco81/TrueZen.nvim",
      cmd = {"TZAtaraxis","TZMinimalist"},
      config = function()
          require("lv-zen").config()  -- ~/.config/nvim/lua/lv-zen/init.lua
          end
    },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
O.user_autocommands = {
  {'VimEnter', '*', 'TZMinimalist'}, -- Zen
  {'FileType', 'vimwiki.markdown', 'setlocal nowrap nospell'}, -- Markdown
}

-- Bindings

-- Global
vim.api.nvim_set_keymap('n', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-q>', ':Commentary<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-w>', ':TZAtaraxis l25 r25<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-m>', ':TZMinimalist<CR>', {noremap = true, silent = true})
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


-- Additional Leader bindings for WhichKey
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
    z = {name = ""}
}
