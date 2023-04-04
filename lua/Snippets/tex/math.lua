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
	s({ trig = "tex", snippetType = "autosnippet" },
		fmta(
			'\\text{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'df', snippetType = 'autosnippet' },
		{ t('\\diff ') },
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'ble', snippetType = 'autosnippet' },
		{ t('\\left(') },
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'bri', snippetType = 'autosnippet' },
		{ t('\\right)') },
		{ condition = tex.in_mathzone }
	),
}
