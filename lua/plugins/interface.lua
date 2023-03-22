return {
	{
		'akinsho/bufferline.nvim',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		opts = {
			options = {
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
				buffer_close_icon = ' ',
			},
		},
		config = function(_, opts)
			local highlights = require('rose-pine.plugins.bufferline')
			require('bufferline').setup(opts,{ highlights = highlights })
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = 'rose-pine'
			},
		},
	},
	{
		'lukas-reineke/indent-blankline.nvim',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		opts = {
			show_current_context = true,
			show_current_context_start = true,
		},
	},
	{
		'lewis6991/gitsigns.nvim',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		config = function()
			require('gitsigns').setup()
		end,
	},
}
