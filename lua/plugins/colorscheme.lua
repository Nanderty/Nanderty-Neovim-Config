return {
	--{
	--	'loctvl842/monokai-pro.nvim',
	--	lazy = false,
	--	priority = 1000,
	--	config = function()
	--		vim.opt.background = 'dark'
	--		require('monokai-pro').setup({
	--			override = function(c)
	--				return {
	--					TelescopeSelection = { bg = c.base.dimmed3 },
	--					TelescopePromptNormal = { bg = c.base.dimmed3, fg = c.base.white },
	--					TelescopePromptBorder = { bg = c.base.dimmed3, fg = c.base.dimmed3 },
	--					TelescopeResultsNormal = { bg = c.base.dimmed5, fg = c.base.white },
	--					TelescopeResultsBorder = { bg = c.base.dimmed5, fg = c.base.dimmed5 },
	--					TelescopePreviewNormal = { bg = c.base.dimmed5 },
	--					TelescopePreviewBorder = { bg = c.base.dimmed5, fg = c.base.dimmed5 },

	--					TelescopePreviewDirectory = {
	--						bg = c.prompt_bg,
	--						fg = c.base.white,
	--					},
	--					TelescopePreviewDate = {
	--						bg = c.prompt_bg,
	--						fg = c.base.red,
	--					},
	--					TelescopePreviewHyphen = {
	--						bg = c.prompt_bg,
	--						fg = c.base.white,
	--					},
	--				}
	--			end,
	--		})
	--		vim.cmd.colorscheme('monokai-pro')
	--	end,
	--},
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
