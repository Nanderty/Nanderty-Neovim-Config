return {
    {
	'nvim-telescope/telescope.nvim',
	keys = {
	    { '<leader>pf', '<cmd>Telescope find_files<cr>', desc = 'find files' },
	    { '<leader>pd', '<cmd>Telescope oldfiles<cr>', desc = 'find oldfiles' },
	    { '<leader>pg', '<cmd>Telescope live_grep<cr>', desc = 'grep files' },
	    { '<leader>pb', '<cmd>Telescope buffers<cr>', desc = 'find buffers' },
	},
	dependencies = {
	    'nvim-lua/plenary.nvim',
	    'nvim-tree/nvim-web-devicons',
	    'nvim-telescope/telescope-fzf-native.nvim',
	},
	opts = {
	    defaults = {
		mappings = {
		    n = {
			['q'] = function(...)
			    return require('telescope.actions').close(...)
			end,
		    }
		},
		layout_config = {
		    horizontal = {
			prompt_position = 'top',
			preview_width = 0.55,
			results_width = 0.8,
		    },
		    vertical = {
			mirror = false,
		    },
		    width = 0.87,
		    height = 0.80,
		    preview_cutoff = 120,
		},
		borderchars = { '█', ' ', '▀', '█', '█', ' ', ' ', '▀' },
	    },
	    extensions = {
		sessions_picker = {
		    sessions_dir = vim.fn.stdpath('data') ..'/session/',
		}
	    },
	},
    },
    {
	'nvim-telescope/telescope-file-browser.nvim',
	keys = {
	    { '<leader>pv', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>', desc = 'file tree' },
	},
	dependencies = {
	    'nvim-telescope/telescope.nvim',
	},
	config = function()
	    require('telescope').load_extension 'file_browser'
	end,
    },
    {
	dir = vim.fn.stdpath('data')..'/localplugins/telemini/',
	keys = {
	    { '<leader>ps', '<cmd>Telescope telemini<cr>', desc = 'sessions' }
	},
	dependencies = {
	    'nvim-telescope/telescope.nvim',
	},
	config = function()
	    require('telescope').load_extension 'telemini'
	end,
    },
    {
	'nvim-telescope/telescope-fzf-native.nvim',
	build = 'make',
	config = function()
	    require('telescope').load_extension 'fzf'
	end,
    },
    { 'nvim-tree/nvim-web-devicons',},
    { 'nvim-lua/plenary.nvim',},
}
