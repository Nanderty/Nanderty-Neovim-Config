local Plug = vim.fn['plug#']
vim.call("plug#begin", "~/AppData/local/nvim/plugged")

Plug 'echasnovski/mini.nvim'

Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug('akinsho/bufferline.nvim', {tag = 'v3.*'})
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'navarasu/onedark.nvim'

Plug('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

Plug 'lervag/vimtex'
Plug 'sbdchd/neoformat'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

vim.call("plug#end")
