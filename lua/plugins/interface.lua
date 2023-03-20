return {
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      options = {
	diagnostics = "nvim_lsp",
	always_show_bufferline = false,
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts)
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
	theme = 'onedark'
      },
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    event = {
      'BufReadPost',
      'BufNewFile'
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = {
      'BufReadPost',
      'BufNewFile'
    },
    config = function()
      require('gitsigns').setup()
    end,
  },
}
