local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = '/', snippetType = 'autosnippet' },
		fmta(
			'\\frac{<>}{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "in", snippetType = "autosnippet" },
		fmta(
			'\\int_{<>}^{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'df', snippetType = 'autosnippet' },
		{ t('\\diff ') },
		{ condition = tex.in_mathzone }
	),
}
