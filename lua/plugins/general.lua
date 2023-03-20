return {
    {
	'sbdchd/neoformat',
	keys = {
	    { '<leader>i', '<cmd>Neoformat<cr>', desc = 'format' },
	},
    },
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
}
