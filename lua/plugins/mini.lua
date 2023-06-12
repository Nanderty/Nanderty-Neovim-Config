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
		config = function()
			require('mini.sessions').setup({
				force = {
					read = false,
					write = true,
					delete = true,
				},
			})
		end,
	},
	{
		'echasnovski/mini.starter',
		event = 'VimEnter',
		config = function()
			require('mini.starter').setup({
				evaluate_single = true,
				silent = true,
				items = {
					require('mini.starter').sections.sessions(10, true),
				},
			})
		end,
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
