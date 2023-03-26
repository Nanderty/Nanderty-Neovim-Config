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
		{ condition = line_begin }
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
}
