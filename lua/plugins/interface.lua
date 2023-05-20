return {
	{
		'nvim-lualine/lualine.nvim',
		event = 'VeryLazy',
		config = function()
			vim.api.nvim_set_hl(0, 'StatusLine', { bg = nil })
			vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = nil })

			local monokai_pro = require("lualine.themes.monokai-pro")
			monokai_pro.normal.b.bg = nil
			monokai_pro.normal.c.bg = nil
			monokai_pro.normal.c.fg = nil
			monokai_pro.inactive.z = {
				bg = nil,
				fg = require("monokai-pro.colorscheme").colors.base.yellow,
			}

			local function separator()
				return [[separator]]
			end

			require('lualine').setup {
				options = {
					theme = monokai_pro,
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
					lualine_x = {},
				},
			}
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
