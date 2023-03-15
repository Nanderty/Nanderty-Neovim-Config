require('luasnip').config.set_config({
  enable_autosnippets = true,
})

require('luasnip.loaders.from_lua').load({paths = vim.fn.stdpath('config')..'/Snippets'})
