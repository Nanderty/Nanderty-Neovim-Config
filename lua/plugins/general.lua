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
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
	{
		'tpope/vim-fugitive',
		event = {
			'BufReadPost',
			'BufNewFile'
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
