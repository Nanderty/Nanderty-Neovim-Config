return {
    {
	'akinsho/bufferline.nvim',
	event = {
	    'BufReadPost',
	    'BufNewFile'
	},
	dependencies = {
	    'nvim-tree/nvim-web-devicons',
	},
	opts = {
	    options = {
		diagnostics = "nvim_lsp",
		always_show_bufferline = false,
	    },
	},
	config = function(_, opts)
	    require("bufferline").setup(opts)
	end,
    },
    {
	'nvim-lualine/lualine.nvim',
	event = 'VeryLazy',
	opts = {
	    options = {
		theme = 'auto'
	    },
	},
    },
    {
	'lukas-reineke/indent-blankline.nvim',
	event = {
	    'BufReadPost',
	    'BufNewFile'
	},
	opts = {
	    show_current_context = true,
	    show_current_context_start = true,
	},
    },
    {
	'lewis6991/gitsigns.nvim',
	event = {
	    'BufReadPost',
	    'BufNewFile'
	},
	config = function()
	    require('gitsigns').setup()
	end,
    },
}
