return {
	{
		'mfussenegger/nvim-lint',
		event = {
			'BufWritePre'
		},
		config = function()
			require('lint').linters_by_ft = {
				tex = { 'lacheck', }
			}
			vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
				callback = function()
					require('lint').try_lint()
				end,
			})
		end,
	},
	{
		'NeogitOrg/neogit',
		keys = {
			{ '<leader>a', function() require('neogit').open() end, desc = 'git' },
		},
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
	  config = true
	},
	{
		'ludovicchabant/vim-gutentags',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
	},
}
