return {
	{
		'echasnovski/mini.sessions',
		event = 'VimEnter',
		keys = {
			{
				'<leader>ss',
				function()
					MiniSessions.write(vim.fn.input('Create session > '))
				end,
				desc = 'save session'
			},
			{
				'<leader>sd',
				function()
					MiniSessions.delete(vim.fn.input('Delete session > '))
				end,
				desc = 'delete session'
			},
		},
		opts = {
			force = {
				delete = true,
			},
		},
	},
	{
		'echasnovski/mini.starter',
		event = 'VimEnter',
		opts = {
			evaluate_single = true,
			silent = true,
			items = {
				function() return require('mini.starter').sections.sessions(10, true) end,
			},
		}
	},
	{
		'echasnovski/mini.indentscope',
		event = {
			'BufReadPre',
			'BufNewFile'
		},
		config = function()
			require('mini.indentscope').setup({
				draw = {
					delay = 0,
					animation = require('mini.indentscope').gen_animation.none(),
				},
				options = {
					try_as_border = true,
				},
				symbol = '│',
			})
		end,
	},
}
