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
