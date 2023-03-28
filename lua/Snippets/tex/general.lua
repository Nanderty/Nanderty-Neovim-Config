local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = "sec", snippetType = "autosnippet" },
		fmta(
			'\\section*{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
	s({ trig = "hh", snippetType = "autosnippet" },
		fmta(
			'\\SI{<>}{<>}',
			{
				i(1),
				i(2),
			}
		)
	),
	s({ trig = "upa", snippetType = "autosnippet" },
		fmta(
			'\\usepackage{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
	s({ trig = "opa", snippetType = "autosnippet" },
		fmta(
			'\\usepackage[<>]{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = helper.line_begin }
	),
}
