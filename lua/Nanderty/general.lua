vim.opt.spelllang = {'de_de', 'en_us'}

vim.opt.timeoutlen = 500
vim.opt.updatetime = 200
vim.opt.mouse = a
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

vim.opt.undofile = true
vim.opt.undodir = { vim.fn.stdpath('data')..'/undo' }
vim.opt.undolevels = 1000

vim.opt.number = true
vim.opt.scrolloff = 20
vim.opt.numberwidth = 5

vim.opt.termguicolors = true
vim.opt.guifont = {'Hack NFM:h12'}

require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()
