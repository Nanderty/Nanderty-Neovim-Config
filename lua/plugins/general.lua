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
		'chrisgrieser/nvim-tinygit',
		dependencies = {
			'stevearc/dressing.nvim',
			'rcarriga/nvim-notify',
		},
		keys = {
			{ '<leader>a', function() require('tinygit').smartCommit({ push = true }) end, desc = 'git push' },
		},
	},
	{
		'ludovicchabant/vim-gutentags',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
	},
}
