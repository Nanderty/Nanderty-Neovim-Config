return {
	{
		'L3MON4D3/LuaSnip',
		event = 'InsertEnter',
		keys = {
			{
				'jj',
				function() require('luasnip').jump(1) end,  mode = 'i'
			},
			{
				'kk',
				function() require('luasnip').jump(-1) end, mode = 'i'
			},
		},
		opts = {
			history = true,
			enable_autosnippets = true,
			delete_check_events = 'TextChanged',
			update_events = { 'TextChanged', 'TextChangedI' },
		},
		config = function(_, opts)
			require('luasnip').config.set_config(opts)
			require('luasnip.loaders.from_lua').lazy_load({ paths = vim.fn.stdpath('config') .. '/lua/Snippets/' })
		end
	},
	{
		'hrsh7th/nvim-cmp',
		event = {
			'InsertEnter',
			'CmdlineEnter',
		},
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'FelipeLema/cmp-async-path',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
			'micangl/cmp-vimtex',
		},
		opts = function()
			local luasnip = require('luasnip')
			local cmp = require('cmp')

			return {
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<S-Space>'] = cmp.mapping.confirm({ select = false }),
					['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					['jk'] = cmp.mapping.abort(),
				}),
				sources = cmp.config.sources({
					{ name = 'luasnip' },
					{ name = 'vimtex', },
					{ name = 'async_path' },
					{ name = 'nvim_lsp' },
					{ name = 'buffer' },
				}),
				formatting = {
					format = function(_, item)
						item.kind = (require('icons').kinds[item.kind] or ' ') .. item.kind
						return item
					end
				}
			}
		end,
	},
}
