return {
    {
	'loctvl842/monokai-pro.nvim',
	lazy = false,
	priority = 1000,
	config = function()
	    require("monokai-pro").setup({
		background_clear = {},
		override = function(c)
		    return {
			TelescopePreviewDate = { fg = c.base.red , bg = transparent_bg },
			TelescopePreviewDirectory = { fg = c.base.white , bg = transparent_bg },
		    }
		end
	    })
	    vim.cmd([[colorscheme monokai-pro]])
	end,
    },
}
