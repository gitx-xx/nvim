-- if not package.loaded['which-key'] then
--  return
-- end
local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

which_key.setup {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ...
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
  },
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
}

-- Set leader
if O.leader_key == " " or O.leader_key == "space" then
  vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
  vim.g.mapleader = " "
else
  vim.api.nvim_set_keymap("n", O.leader_key, "<NOP>", { noremap = true, silent = true })
  vim.g.mapleader = O.leader_key
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '


vim.api.nvim_set_keymap("n", "<leader>h", ":Startify<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>d", ":Telescope lsp_workspace_diagnostics<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>r", ":RnvimrToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>v", "<C-W>v", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>s", "<C-W>s", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>x", ":BufferClose<CR>", {noremap = true, silent = true})

-- F = {"<cmd>lua require'telescope.builtin'.find_files{search_dirs={'~/dev', '~/notes'}}<cr>", "Find File"},

vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>lua require'telescope.builtin'.find_files{search_dirs={'~/dev', '~/notes'}}<cr>", {noremap = true, silent = true})

-- open lv-config
vim.api.nvim_set_keymap(
  "n",
  "<leader>.",
  ":e " .. CONFIG_PATH .. "/lv-config.lua<CR>",
  { noremap = true, silent = true }
)

local mappings = {
    ["p"] = "Projects",
    ["x"] = "Close Buffer",
    ["r"] = "Ranger",
    ["F"] = "Find file",
    ["v"] = "Split",
    ["\""] = "Registers",
    ["\'"] = "Marks",
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
    d = {
        name = "+Diagnostics",
        t = {"<cmd>TroubleToggle<cr>", "trouble"},
        w = {"<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace"},
        d = {"<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document"},
        q = {"<cmd>TroubleToggle quickfix<cr>", "quickfix"},
        l = {"<cmd>TroubleToggle loclist<cr>", "loclist"},
        r = {"<cmd>TroubleToggle lsp_references<cr>", "references"},
    },
    D = {
      "<cmd>BufferOrderByDirectory<cr>",
      "sort BufferLines automatically by directory",
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

        s = {"<cmd>Telescope spell_suggest<cr>", "Spelling"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"},
        w = {"<cmd>Telescope grep_string<cr>", "Find selected"}
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
    s = {
      O.plugin.symbol_outline.active and "<cmd>SymbolsOutline<cr>" or "<cmd> Telescope lsp_document_symbols<cr>",
      "Document Symbols",
    },
    S = {
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      "Workspace Symbols",
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
    -- extras
    z = {
        name = "+Zen",
        s = {"<cmd>TZBottom<cr>", "toggle status line"},
        t = {"<cmd>TZTop<cr>", "toggle tab bar"},
        z = {"<cmd>TZAtaraxis<cr>", "toggle zen"},
    }
}

-- if O.plugin.trouble.active then
--   mappings["d"] = {
--     name = "Diagnostics",
--     t = { "<cmd>TroubleToggle<cr>", "trouble" },
--     w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace" },
--     d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document" },
--     q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
--     l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
--     r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
--   }
-- end

if O.plugin.symbol_outline.active then
  vim.api.nvim_set_keymap("n", "<leader>o", ":SymbolsOutline<CR>", { noremap = true, silent = true })
  mappings["o"] = "Symbols outline"
end

if O.plugin.ts_playground.active then
  vim.api.nvim_set_keymap("n", "<leader>Th", ":TSHighlightCapturesUnderCursor<CR>", { noremap = true, silent = true })
  mappings[""] = "Highlight Capture"
end

if O.plugin.zen.active then
  vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", { noremap = true, silent = true })
  mappings["z"] = "Zen"
end
if O.plugin.floatterm.active then
  vim.api.nvim_set_keymap("n", "<leader>gg", "<CMD>lua _G.__fterm_lazygit()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "<A-i>", "<CMD>lua require('FTerm').toggle()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
    "t",
    "<A-i>",
    "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>",
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap("n", "<A-l>", "<CMD>lua _G.__fterm_lazygit()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap(
    "t",
    "<A-l>",
    "<C-\\><C-n><CMD>lua _G.__fterm_lazygit()<CR>",
    { noremap = true, silent = true }
  )
  mappings["gg"] = "LazyGit"
end
if O.plugin.telescope_project.active then
  -- open projects
  vim.api.nvim_set_keymap(
    "n",
    "<leader>P",
    ":lua require'telescope'.extensions.project.project{}<CR>",
    { noremap = true, silent = true }
  )
  mappings["P"] = "Projects"
end

-- [";"] = "Dashboard",

if O.lang.latex.active then
  mappings["L"] = {
    name = "+Latex",
    c = { "<cmd>VimtexCompile<cr>", "Toggle Compilation Mode" },
    f = { "<cmd>call vimtex#fzf#run()<cr>", "Fzf Find" },
    i = { "<cmd>VimtexInfo<cr>", "Project Information" },
    s = { "<cmd>VimtexStop<cr>", "Stop Project Compilation" },
    t = { "<cmd>VimtexTocToggle<cr>", "Toggle Table Of Content" },
    v = { "<cmd>VimtexView<cr>", "View PDF" },
  }
end

if O.lushmode then
  mappings["L"] = {
    name = "+Lush",
    l = { ":Lushify<cr>", "Lushify" },
    x = { ":lua require('lush').export_to_buffer(require('lush_theme.cool_name'))", "Lush Export" },
    t = { ":LushRunTutorial<cr>", "Lush Tutorial" },
    q = { ":LushRunQuickstart<cr>", "Lush Quickstart" },
  }
end

-- for _, v in pairs(O.user_which_key) do
-- end
for k, v in pairs(O.user_which_key) do
  mappings[k] = v
  -- table.insert(mappings, O.user_which_key[1])
  -- print(k)
  --   print(v)
end

local wk = require "which-key"
wk.register(mappings, opts)
