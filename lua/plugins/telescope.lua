return {
    {
	'nvim-telescope/telescope.nvim',
	keys = {
	    { '<leader>pf', '<cmd>Telescope find_files<cr>', desc = 'find files' },
	    { '<leader>pd', '<cmd>Telescope oldfiles<cr>', desc = 'oldfiles' },
	    { '<leader>pg', '<cmd>Telescope live_grep<cr>', desc = 'grep files' },
	},
	dependencies = { 'nvim-lua/plenary.nvim' },
	opts = {
	    defaults = {
		initial_mode = 'normal',
		mappings = {
		    n = {
			['q'] = function(...)
			    return require('telescope.actions').close(...)
			end,
		    }
		}
	    },
	    extensions = {
		file_browser ={
		    hijack_netrw = true,
		},
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
	    'nvim-lua/plenary.nvim',
	    'nvim-tree/nvim-web-devicons',
	},
	config = function()
	    require('telescope').load_extension 'file_browser'
	end,
    },
}
