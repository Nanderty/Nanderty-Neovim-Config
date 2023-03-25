return {
	{
		'L3MON4D3/LuaSnip',
		event = 'InsertEnter',
		keys = {
			{ 'jj', function() require('luasnip').jump(1) end,  mode = 'i' },
			{ 'kk', function() require('luasnip').jump(-1) end, mode = 'i' },
		},
		opts = {
			history = true,
			enable_autosnippets = true,
			delete_check_events = 'TextChanged',
			update_events = { 'TextChanged', 'TextChangedI' },
		},
		config = function(_, opts)
			require('luasnip').config.set_config(opts)
			require('luasnip.loaders.from_lua').lazy_load({ paths = vim.fn.stdpath('config') .. '/Snippets/' })
		end
	},
	{
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-calc',
			'saadparwaiz1/cmp_luasnip',
			'L3MON4D3/LuaSnip',
		},
		opts = function()
			local has_words_before = function()
				unpack = unpack or table.unpack
				local line, col = unpack(vim.api.nvim_win_get_cursor(0))
				return col ~= 0 and
					vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
			end

			local luasnip = require('luasnip')
			local cmp = require('cmp')

			return {
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<Space>'] = cmp.mapping.confirm({ select = false }),
					['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
					['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
					['jk'] = cmp.mapping.abort(),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'path' },
					{ name = 'calc' },
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
