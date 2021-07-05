-- setup for TrueZen.nvim
-- https://github.com/Pocco81/TrueZen.nvim

require("true-zen").setup({
    true_false_commands = false,
	cursor_by_mode = false,
	before_minimalist_mode_shown = false,
	before_minimalist_mode_hidden = false,
	after_minimalist_mode_shown = false,
	after_minimalist_mode_hidden = false,
	bottom = {
		hidden_laststatus = 0,
		hidden_ruler = false,
		hidden_showmode = false,
		hidden_showcmd = false,
		hidden_cmdheight = 1,

		shown_laststatus = 2,
		shown_ruler = true,
		shown_showmode = false,
		shown_showcmd = false,
		shown_cmdheight = 1
	},
	top = {
		hidden_showtabline = 0,

		shown_showtabline = 2
	},
	left = {
		hidden_number = false,
		hidden_relativenumber = false,
		hidden_signcolumn = "no",

		shown_number = true,
		shown_relativenumber = false,
		shown_signcolumn = "no"
	},
    modes = {
		ataraxis = {
			left_padding = 32,
			right_padding = 32,
			top_padding = 1,
			bottom_padding = 1,
			ideal_writing_area_width = 0,
			just_do_it_for_me = true,
			keep_default_fold_fillchars = true,
			custome_bg = "",
			bg_configuration = true,
			affected_higroups = {NonText = {}, FoldColumn = {}, ColorColumn = {}, VertSplit = {}, StatusLine = {}, StatusLineNC = {}, SignColumn = {}}
		},
	},
	integrations = {
		integration_galaxyline = true,
		integration_vim_airline = false,
		integration_vim_powerline = false,
		integration_tmux = false,
		integration_express_line = false,
		integration_gitgutter = false,
		integration_vim_signify = false,
		integration_limelight = false
	},
    misc = {
		on_off_commands = false,
		ui_elements_commands = true,
		cursor_by_mode = false,
	}
})
