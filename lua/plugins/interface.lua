return {
	{
		'nvim-tree/nvim-web-devicons',
	},
	{
		'mcauley-penney/visual-whitespace.nvim',
		event = {
			'BufReadPre',
			'BufNewFile'
		},
		config = true
	},
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		opts = {
			options = {
				theme = function() return require('lualine.theme') end,
			},
			sections = {
				lualine_a = {
					'mode',
				},
				lualine_b = {
					'branch',
					{
						'diagnostics',
						symbols = {
							error = ' ',
							warn = ' ',
							hint = ' ',
							info = ' ',
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
				lualine_a = {},
				lualine_b = {
					function()
						return '    '
					end,
				},
				lualine_c = {
					'filename',
				},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		},
		config = function(_, opts)
			require('lualine').setup(opts)
			vim.api.nvim_set_hl(0, 'StatusLine', { bg = require('monokai-pro.colorscheme').editor.background })
			vim.api.nvim_set_hl(0, 'StatusLineNC', {
				bg = require('monokai-pro.colorscheme').editor.backgroundnil
			})
		end,
	},
	{
		'mei28/qfc.nvim',
		ft = 'qf',
		config = function()
			require('qfc').setup({
			timeout = 10000,
			autoclose = true,
			})
		end
	},
}
