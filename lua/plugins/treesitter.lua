return {
	{
		'nvim-treesitter/nvim-treesitter',
		main = 'nvim-treesitter.configs',
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
				additional_vim_regex_highlighting = { 'latex' },
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
    },
	{
		'luckasRanarison/tree-sitter-hyprlang',
		event = {
			'BufReadPre',
			'BufNewFile'
		},
	},
}
