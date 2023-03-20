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
	'JoseConseco/telescope_sessions_picker.nvim',
	keys = {
	    { '<leader>ps', '<cmd>Telescope sessions_picker<cr>', desc = 'session' },
	},
	dependencies = {
	    'nvim-telescope/telescope.nvim',
	    'nvim-lua/plenary.nvim',
	    'nvim-tree/nvim-web-devicons',
	},
	config = function()
	    require('telescope').load_extension 'sessions_picker'
	end,
    },
}
