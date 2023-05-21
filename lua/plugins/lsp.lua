return {
	{
		'neovim/nvim-lspconfig',
		event = {
			'BufReadPost',
			'BufNewFile'
		},
		dependencies = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'hrsh7th/cmp-nvim-lsp',
		},
		config = function()
			require('mason').setup()

			require('mason-lspconfig').setup()

			local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lsp_attach = function(client, bufnr)
			end

			local lspconfig = require('lspconfig')
			require('mason-lspconfig').setup_handlers({
				function(server_name)
					lspconfig[server_name].setup({
						on_attach = lsp_attach,
						capabilities = lsp_capabilities,
					})
				end,
			})
			local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
			for type, icon in pairs(signs) do
				local hl = "DiagnosticSign" .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
			vim.diagnostic.config({
				update_in_insert = true,
				virtual_text = false,
			})
			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					local opts = {
						pad_top = 1,
						pad_bottom = 1,
						header = '',
						source = 'always',
						focusable = false,
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", },
						prefix = ' ',
						scope = 'cursor',
					}
					vim.diagnostic.open_float(nil, opts)
				end
			})
		end,
	},
}
