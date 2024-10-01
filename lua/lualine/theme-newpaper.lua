local configModule = require("newpaper.config")
local lualine_style
local theme = {}

if vim.g.newpaper_lualine_style == nil then
    lualine_style = vim.o.background
else
    lualine_style = vim.g.newpaper_lualine_style
end

configModule.config.colors = vim.g.newpaper_colors
configModule.config.style = lualine_style
theme.colors = require("newpaper.colors").setup(configModule.config)
local colors = theme.colors

local newpaper = {}

newpaper.normal = {
	a = { bg = colors.green, fg = colors.bg, gui = 'bold' },
	b = { bg = colors.bg, fg = colors.green },
	c = { bg = colors.bg, fg = colors.bg },
	x = { bg = colors.bg, fg = colors.bg },
	y = { bg = colors.bg, fg = colors.bg },
	z = { bg = colors.red, fg = colors.bg, gui = 'bold' },
}

newpaper.insert = {
	a = { bg = colors.teal, fg = colors.bg, gui = 'bold' },
	b = { bg = colors.bg, fg = colors.teal},
}

newpaper.visual = {
	a = { bg = colors.purple, fg = colors.bg, gui = 'bold' },
	b = { bg = colors.bg, fg = colors.purple },
}

newpaper.replace = {
	a = { bg = colors.lightorange, fg = colors.bg, gui = 'bold' },
	b = { bg = colors.bg, fg = colors.lightorange },
}

newpaper.inactive = {
	c = { bg = colors.bg, fg = colors.fg },
	z = { bg = colors.bg, fg = colors.red },
}

return newpaper
