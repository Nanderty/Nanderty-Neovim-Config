return {
	{
		'lervag/vimtex',
		lazy = false,
		config = function()
			vim.g.vimtex_quickfix_open_on_warning = 0
			vim.keymap.set('n', '<leader>ll', '<Cmd>VimtexCompile<CR>')
			vim.g.vimtex_view_method = 'zathura_simple'
			vim.g.vimtex_fold_enabled = 1
			vim.g.vimtex_fold_manual = 1
			vim.g.vimtex_complete_bib_simple = 1
		end,
	},
}
