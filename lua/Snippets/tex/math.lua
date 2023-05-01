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

	s({ trig = "tex", snippetType = "autosnippet" },
		fmta(
			'\\text{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
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

	s({ trig = "sum", snippetType = "autosnippet" },
		fmta(
			'\\sum_{<>}^{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "int", snippetType = "autosnippet" },
		fmta(
			'\\int_{<>}^{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'nn', snippetType = 'autosnippet' },
		fmta(
			'\\num{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'mcl', snippetType = 'autosnippet' },
		fmta(
			'\\mathcal{<>}',
			{
				i(1),
			}
		)
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
	s({ trig = "ove", snippetType = "autosnippet" },
		fmta(
			'\\overline{<>}',
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

	s({ trig = 'gg', snippetType = 'autosnippet' },
		fmta(
			'\\sqrt[<>]{<>}',
			{
				i(1),
				i(2),
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
		{ t('\\,d') },
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
