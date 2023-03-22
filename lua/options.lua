vim.opt.spelllang = {'de_de', 'en_us'}

vim.opt.timeoutlen = 500
vim.opt.updatetime = 200
vim.opt.mouse = a
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.undodir = { vim.fn.stdpath('data')..'/undo' }
vim.opt.undolevels = 1000

vim.opt.fillchars='eob: '

vim.opt.showmode = false
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.scrolloff = 20
vim.opt.numberwidth = 5
vim.diagnostic.config({
    virtual_text = {
	severity = vim.diagnostic.severity.ERROR,
    },
    underline = {
	severity = vim.diagnostic.severity.ERROR,
    },
})
vim.opt.termguicolors = true
vim.opt.guifont = {'Hack NFM:h12'}
