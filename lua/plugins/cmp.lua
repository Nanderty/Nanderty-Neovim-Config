return {
	{
		'L3MON4D3/LuaSnip',
		dependencies = {
			'iurimateus/luasnip-latex-snippets.nvim',
			'rafamadriz/friendly-snippets',
		},
		opts = {
			history = true,
			delete_check_events = "TextChanged",
		},
		config = function()
			require('luasnip-latex-snippets').setup()
			require('luasnip.loaders.from_vscode').lazy_load()
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

			luasnip.config.set_config({
				history = true,
				enable_autosnippets = true,
			})
			return {
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					['<Space>'] = cmp.mapping.confirm({ select = false }),
					['<Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						elseif has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end, { 'i', 's' }),
					['<S-Tab>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { 'i', 's' }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{name = 'buffer' },
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
