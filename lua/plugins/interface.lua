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
				diagnostics = 'nvim_lsp',
				always_show_bufferline = false,
				buffer_close_icon = ' ',
			},
		},
	},
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = 'rose-pine'
			},
			sections = {
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			},
			inactive_sections = {
				lualine_x = {},
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
		},
	},
	{
		'lewis6991/gitsigns.nvim',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		opts = {
			signs = {
				add = { text = ' │' },
				change = { text = ' │' },
				delete = { text = ' │' },
				topdelete = { text = ' │' },
				changedelete = { text = ' │' },
				untracked = { text = ' │' },
			},
		},
	},
}
