return {
	{
		'nvim-telescope/telescope.nvim',
		keys = {
			{
				'<leader>f',
				function() require('telescope.builtin').find_files() end,
				desc = 'find files'
			},
			{
				'<leader>g',
				function() require('telescope.builtin').live_grep() end,
				desc = 'find files'
			},
			{
				'<leader>d',
				function() require('telescope.builtin').oldfiles() end,
				desc = 'find oldfiles'
			},
			{
				'<leader>b',
				function() require('telescope.builtin').buffers() end,
				desc = 'find buffers'
			},
		},
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-fzf-native.nvim',
		},
		opts = {
			defaults = {
				prompt_prefix = "   ",
				entry_prefix = "  ",
				selection_caret = "  ",
				mappings = {
					['n'] = {
						['q'] = function(...) return require('telescope.actions').close(...) end,
						['l'] = function(...) return require('telescope.actions').select_default(...) end,
					}
				},
				layout_config = {
					horizontal = {
						prompt_position = 'top',
						preview_width = 0.5,
						results_width = 0.8,
					},
					width = 0.8,
					height = 0.8,
					preview_cutoff = 120,
				}
			},
			extensions = {
				file_browser = {
					hidden = {
						file_browser = true,
						folder_browser = true,
					},
					mappings = {
						['n'] = {
							['h'] = function(...) require('telescope').extensions.file_browser.actions.goto_parent_dir(...) end,
						},
					},
				},
			},
		},
	},
	{
		'nvim-telescope/telescope-file-browser.nvim',
		keys = {
			{ '<leader>v', function(...) require('telescope').extensions.file_browser.file_browser(...) end, desc = 'file tree' },
		},
		dependencies = {
			'nvim-telescope/telescope.nvim',
		},
		config = function()
			require('telescope').load_extension 'file_browser'
		end,
	},
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make',
		config = function()
			require('telescope').load_extension 'fzf'
		end,
	},
}
