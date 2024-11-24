tex = {}

tex.in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

tex.in_comment = function()
	return vim.fn['vimtex#syntax#in_comment']() == 1
end

tex.in_env = function(name)
	local is_inside = vim.fn['vimtex#env#is_inside'](name)
	return (is_inside[1] > 0 and is_inside[2] > 0)
end

tex.in_enumerate = function()
	return tex.in_env('enumerate')
end

tex.in_itemize = function()
	return tex.in_env('itemize')
end

tex.in_figure = function()
	return tex.in_env('figure')
end

tex.in_scheme = function()
	return tex.in_env('scheme')
end

tex.in_table = function()
	return tex.in_env('table')
end

return tex
