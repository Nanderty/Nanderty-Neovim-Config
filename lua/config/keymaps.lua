return {
	{
		dir = '',
		name = 'keybinds',
		lazy = false,
		init = function()
			vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
			vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
			vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)
			vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
			vim.keymap.set('n', '<leader>q', '<cmd>qa<cr>')
			vim.keymap.set('n', '<leader>p', [["+p]])
			vim.keymap.set({ 'n', 'v' }, '<leader>y', [['+y]])
		end,
	},
}

