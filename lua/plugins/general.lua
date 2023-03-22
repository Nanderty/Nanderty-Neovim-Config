return {
	{
		'neomake/neomake',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		config = function()
			vim.call('neomake#configure#automake', 'nrwi', '500')
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
	{
		'max397574/better-escape.nvim',
		lazy = false,
		config = function()
			require('better_escape').setup {
				mapping = { 'jk' },
				timeout = 0.2 * vim.o.timeoutlen,
			}
		end,
	},
}
