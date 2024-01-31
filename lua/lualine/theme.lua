local colors = require('monokai-pro.colorscheme')

local monokai_pro = {}

monokai_pro.normal = {
	a = { bg = colors.base.green, fg = colors.base.black, gui = 'bold' },
	b = { bg = colors.editor.background, fg = colors.base.green },
	c = { bg = colors.editor.background, fg = colors.editor.background },
	x = { bg = colors.editor.background, fg = colors.editor.background },
	y = { bg = colors.editor.background, fg = colors.editor.background },
	z = { bg = colors.base.red, fg = colors.base.black, gui = 'bold' },
}

monokai_pro.insert = {
	a = { bg = colors.base.cyan, fg = colors.base.black, gui = 'bold' },
	b = { bg = colors.editor.background, fg = colors.base.cyan },
}

monokai_pro.visual = {
	a = { bg = colors.base.magenta, fg = colors.base.black, gui = 'bold' },
	b = { bg = colors.editor.background, fg = colors.base.magenta },
}

monokai_pro.replace = {
	a = { bg = colors.base.yellow, fg = colors.base.black, gui = 'bold' },
	b = { bg = colors.editor.background, fg = colors.base.yellow },
}

monokai_pro.inactive = {
	c = { bg = colors.editor.background, fg = colors.base.white },
	z = { bg = colors.editor.background, fg = colors.base.red },
}

return monokai_pro
