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

	s({ trig = "txt", snippetType = "autosnippet" },
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

	s({ trig = "lim", snippetType = "autosnippet" },
		fmta(
			'\\lim_{<>}',
			{
				i(1),
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

	s({ trig = 'hhn', snippetType = 'autosnippet' },
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
	s({ trig = "vrl", snippetType = "autosnippet" },
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

	s({ trig = 'sqr', snippetType = 'autosnippet' },
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

	s({ trig = "ngl", snippetType = "autosnippet" },
		{
			t('\\langle '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = "ngr", snippetType = "autosnippet" },
		{
			t('\\rangle '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = "lr", snippetType = "autosnippet" },
		fmta(
			'\\left(<>\\right)',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'mdl', snippetType = 'autosnippet' },
		{
			t('\\middle'),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'df', snippetType = 'autosnippet' },
		{ t('\\,d ') },
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'bgg', snippetType = 'autosnippet' },
		{
			t('\\bigg'),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'rvr', snippetType = 'autosnippet' },
		{
			t('\\rvert'),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = "sin", snippetType = "autosnippet" },
		fmta(
			'\\sin{\\left(<>\\right)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "cos", snippetType = "autosnippet" },
		fmta(
			'\\cos{\\left(<>\\right)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "tan", snippetType = "autosnippet" },
		fmta(
			'\\tan{\\left(<>\\right)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "det", snippetType = "autosnippet" },
		fmta(
			'\\det{(<>)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "ln", snippetType = "autosnippet" },
		fmta(
			'\\ln{(<>)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "exp", snippetType = "autosnippet" },
		fmta(
			'e^{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "bra", snippetType = "autosnippet" },
		fmta(
			'\\Bra{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "ket", snippetType = "autosnippet" },
		fmta(
			'\\Ket{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),
}
