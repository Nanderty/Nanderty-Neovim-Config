return {
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		lazy = false,
		priority = 1000,
		config = function()
			require('rose-pine').setup({
				variant = 'dawn',
				highlight_groups = {
					TelescopePromptNormal = { fg = 'base', bg = 'rose' },
					TelescopePromptBorder = { bg = 'rose' },
					TelescopePromptTitle = { fg = 'base' },
					TelescopePromptPrefix = { fg = 'base' },
					TelescopePromptCounter = { fg = 'base' },
					TelescopePreviewNormal = { bg = 'overlay' },
					TelescopePreviewBorder = { bg = 'overlay' },
					TelescopeResultsNormal = { bg = 'overlay' },
					TelescopeResultsBorder = { bg = 'overlay' },
				},
			})
			vim.cmd('colorscheme rose-pine')
		end,
	},
}
