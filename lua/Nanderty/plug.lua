local Plug = vim.fn['plug#']
vim.call('plug#begin', vim.fn.stdpath('data')..'/Plugged')

Plug 'echasnovski/mini.nvim'

Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake'

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug('akinsho/bufferline.nvim', {tag = 'v3.*'})
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
Plug 'navarasu/onedark.nvim'

Plug 'lervag/vimtex'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

vim.call('plug#end')
