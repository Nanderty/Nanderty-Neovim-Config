return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      auto_install = true,
      ignore_install = { 'latex' },
      highlight = { enable = true },
      indent = { enable = true, disable = { "python" } },  
      ensure_installed = {
	'javascript',
	'python',
	'cpp',
	'c',
	'lua',
	'php',
	'html',
	'css',
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  }
}
