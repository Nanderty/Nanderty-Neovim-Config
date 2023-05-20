return {
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = function() return require('lualine.theme') end,
			},
			sections = {
				lualine_b = {
					'branch',
					{
						'diagnostics',
						symbols = {
							error = 'E',
							warn = 'W',
							info = 'I',
							hint = 'H'
						},
					},
				},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {
					'buffers',
				},
			},
			inactive_sections = {
				lualine_b = {
					function()
						return '    '
					end,
				},
				lualine_x = {},
			},
		},
		config = function(_, opts)
			require('lualine').setup(opts)
			vim.api.nvim_set_hl(0, 'StatusLine', { bg = nil })
			vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = nil })
		end,
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
