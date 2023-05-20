return {
	{
		'loctvl842/monokai-pro.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.background = 'dark'
			require('monokai-pro').setup({
				plugins = {
					indent_blankline = {
						context_highlight = 'pro',
					},
				},
				override = function(c)
					return {
						TelescopePromptNormal = { bg = c.base.dimmed3 },
						TelescopePromptBorder = { bg = c.base.dimmed3, fg = c.base.dimmed3 },
						TelescopeResultsNormal = { bg = c.base.dimmed5 },
						TelescopeResultsBorder = { bg = c.base.dimmed5, fg = c.base.dimmed5 },
						TelescopePreviewNormal = { bg = c.base.dimmed5 },
						TelescopePreviewBorder = { bg = c.base.dimmed5, fg = c.base.dimmed5 },

						TelescopePreviewDirectory = {
							bg = c.prompt_bg,
							fg = c.base.white,
						},
						TelescopePreviewDate = {
							bg = c.prompt_bg,
							fg = c.base.red,
						},
						TelescopePreviewHyphen = {
							bg = c.prompt_bg,
							fg = c.base.white,
						},
					}
				end,
			})
			vim.cmd('colorscheme monokai-pro')
		end,
	},
}
