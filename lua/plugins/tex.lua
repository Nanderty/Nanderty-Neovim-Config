return {
	{
		'lervag/vimtex',
		lazy = false,
		config = function()
			vim.g.vimtex_quickfix_open_on_warning = 0
			vim.keymap.set('n', '<leader>ll', '<Cmd>VimtexCompileSS<CR>')
		end,
	},
}
