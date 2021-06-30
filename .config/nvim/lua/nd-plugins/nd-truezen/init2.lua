local true_zen = require("true-zen")

-- setup for TrueZen.nvim
true_zen.setup({
	ui = {
		bottom = {
			laststatus = 0,
			ruler = false,
			showmode = false,
			showcmd = false,
			cmdheight = 1,
		},
		top = {
			showtabline = 0,
		},
		left = {
			number = false,
			relativenumber = false,
			signcolumn = "no",
		},
	},
	modes = {
		ataraxis = {
			left_padding = 32,
			right_padding = 32,
			top_padding = 2,
			bottom_padding = 2,
			ideal_writing_area_width = 0,
			just_do_it_for_me = true,

			fillchars_configuration = false,
			keep_default_fold_fillchars = true,
			quit_untoggles_ataraxis = true,
			custome_bg = "",
			bg_configuration = true,
			affected_higroups = {NonText = {}, FoldColumn = {}, ColorColumn = {}, VertSplit = {}, StatusLine = {}, StatusLineNC = {}, SignColumn = {}}
		},
		focus = {
			margin_of_error = 5,
			focus_method = "experimental"
		},
	},
	integrations = {
		vim_gitgutter = false,
		galaxyline = true,
		tmux = false,
		gitsigns = false,
		nvim_bufferline = true,
		limelight = false,
		vim_airline = false,
		vim_powerline = false,
		vim_signify = false,
		express_line = false,
	},
	misc = {
		on_off_commands = true,
		ui_elements_commands = true,
		cursor_by_mode = false,
	}
})

-- true_zen.after_mode_ataraxis_on = function ()
-- 	local cmd = vim.cmd
-- 	cmd([[wincmd j]])
-- 	cmd([[wincmd k]])
-- end
