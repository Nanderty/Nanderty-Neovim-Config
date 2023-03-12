vim.opt.spelllang = {'de_de', 'en_us'}

vim.opt.timeoutlen = 500
vim.opt.updatetime = 200
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = a
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

vim.opt.number = true
vim.opt.scrolloff = 30
vim.opt.numberwidth = 5

vim.opt.termguicolors = true
vim.opt.guifont = {'Hack NFM:h12'}

require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()
