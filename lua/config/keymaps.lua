return {
	{
		dir = '',
		name = 'keybinds',
		lazy = false,
		init = function()
			vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
			vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
			vim.keymap.set('n', '<leader>r', function()
				vim.lsp.buf.format({ timeout_ms = 10000 })
			end)
			vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')
			vim.keymap.set('n', '<leader>q', '<cmd>qa<cr>')
			vim.keymap.set('n', '<leader>p', [["+p]])
			vim.keymap.set('v', '<leader>y', [["+y]])
			vim.keymap.set('n', '<leader>y', [[<S-v>"+y]])

			vim.keymap.set('n', '<leader>h', [[<C-w>h]])
			vim.keymap.set('n', '<leader>j', [[<C-w>j]])
			vim.keymap.set('n', '<leader>k', [[<C-w>k]])
			vim.keymap.set('n', '<leader>l', [[<C-w>l]])
		end,
	},
}
