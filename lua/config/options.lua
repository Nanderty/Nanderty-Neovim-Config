return {
	{
		dir = '',
		name = 'options',
		lazy = false,
		init = function()
			vim.opt.spelllang = { 'de_de', 'en_us' }

			vim.opt.timeoutlen = 250
			vim.opt.updatetime = 250
			vim.opt.mouse = ''
			vim.opt.signcolumn = 'yes'
			vim.opt.cursorline = true
			vim.opt.wrap = false
			vim.opt.splitbelow = true
			vim.opt.splitright = true
			vim.opt.undofile = true
			vim.opt.undodir = { vim.fn.stdpath('data') .. '/undo' }
			vim.opt.undolevels = 1000

			vim.opt.relativenumber = true
			vim.opt.fillchars = 'eob: ,fold: ,vert: '
			vim.opt.cmdheight = 0
			vim.cmd [[ autocmd RecordingEnter * set cmdheight=1 ]]
			vim.cmd [[ autocmd RecordingLeave * set cmdheight=0 ]]

			vim.opt.showmode = false
			vim.opt.smartindent = true
			vim.opt.shiftwidth = 4
			vim.opt.tabstop = 4
			vim.opt.softtabstop = 4
			vim.opt.number = true
			vim.opt.scrolloff = 20
			vim.opt.numberwidth = 5
			vim.opt.termguicolors = true
		end,
	},
}
