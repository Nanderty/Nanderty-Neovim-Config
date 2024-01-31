return {
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		event = {
		    'BufReadPost',
		    'BufNewFile'
		},
		opts = {
		    auto_install = true,
		    ignore_install = { 'latex' },
		    highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		    indent = { enable = true, disable = { 'python' } },
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
    },
	{
		'luckasRanarison/tree-sitter-hyprlang',
		event = {
			'BufReadPre',
			'BufNewFile'
		},
	},
}
