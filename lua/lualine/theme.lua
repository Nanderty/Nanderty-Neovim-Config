local colors = require("monokai-pro.colorscheme").colors

local monokai_pro = {}

monokai_pro.normal = {
  a = { bg = colors.base.yellow, fg = colors.base.black, gui = "bold" },
  b = { bg = nil, fg = colors.base.yellow },
  c = {
    bg = nil,
    fg = colors.statusBar.activeForeground,
  },
}

monokai_pro.insert = {
  a = { bg = colors.base.cyan, fg = colors.base.black },
  b = { bg = colors.editor.background, fg = colors.base.cyan },
}


monokai_pro.visual = {
  a = { bg = colors.base.magenta, fg = colors.base.black },
  b = { bg = colors.editor.background, fg = colors.base.magenta },
}

monokai_pro.replace = {
  a = { bg = colors.base.red, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.red },
}

monokai_pro.inactive = {
  z = { bg = colors.editor.background, fg = colors.base.yellow },
}

return monokai_pro
