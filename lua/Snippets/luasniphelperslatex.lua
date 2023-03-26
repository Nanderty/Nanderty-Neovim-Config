local M = {}

M.in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
M.in_text = function()
  return not tex_utils.in_mathzone()
end
M.in_comment = function()
  return vim.fn['vimtex#syntax#in_comment']() == 1
end
M.in_env = function(name)
    local is_inside = vim.fn['vimtex#env#is_inside'](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
M.in_equation = function()
    return tex_utils.in_env('equation')
end
M.in_itemize = function()
    return tex_utils.in_env('itemize')
end
M.in_tikz = function()
    return tex_utils.in_env('tikzpicture')
end

return M
