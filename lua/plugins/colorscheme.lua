return {
	{
		"yorik1984/newpaper.nvim",
		lazy = false,
    	priority = 1000,
    	config = function()
			local colors = require("newpaper.colors").setup(require("newpaper.config").config)
			vim.g.newpaper_colors_advanced = {
				linenumber_bg = colors.bg
			}
			vim.g.newpaper_custom_highlights = {
				CursorLineNr = { bg = colors.bg, fg = colors.lightgray },
				TelescopePromptTitle = { bg = colors.telescope_fg, fg = colors.lightorange },
				TelescopePromptPrefix = { fg = colors.lightorange },
				TelescopePromptCounter = { fg = colors.lightorange },
				TelescopePromptBorder = { bg = colors.telescope_fg, fg = colors.telescope_fg },
				TelescopePromptNormal = { bg = colors.telescope_fg, fg = colors.telescope_bg },
				TelescopeResultsNormal = { bg = colors.telescope_bg, fg = colors.telescope_fg },
				TelescopeResultsBorder = { bg = colors.telescope_bg, fg = colors.telescope_bg },
				TelescopePreviewNormal = { bg = colors.telescope_bg },
				TelescopePreviewBorder = { bg = colors.telescope_bg, fg = colors.telescope_bg },
				TelescopePreviewTitle = { bg = colors.telescope_bg, fg = colors.teal },
			}
			vim.cmd.colorscheme('newpaper')
    	end,
	}
}
