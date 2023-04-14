local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = '$', snippetType = 'autosnippet' },
		fmta(
			'$<>$',
			{
				i(1),
			}
		)
	),
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
	s({ trig = "vec", snippetType = "autosnippet" },
		fmta(
			'\\vec{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "hat", snippetType = "autosnippet" },
		fmta(
			'\\hat{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'öö', snippetType = 'autosnippet' },
		fmta(
			'^{<>}',
				{
					i(1),
				}
			),
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'll', snippetType = 'autosnippet' },
		fmta(
			'_{<>}',
				{
					i(1),
				}
			),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "bb", snippetType = "autosnippet" },
		fmta(
			'\\left(<>\\right)',
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
	s({ trig = "sin", snippetType = "autosnippet" },
		fmta(
			'\\sin{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "cos", snippetType = "autosnippet" },
		fmta(
			'\\cos{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
	s({ trig = "tan", snippetType = "autosnippet" },
		fmta(
			'\\tan{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
}
