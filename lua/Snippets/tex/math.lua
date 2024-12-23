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

	s({ trig = 'prt', snippetType = 'autosnippet' },
		{
			t('\\partial ')
		},
		{ condition = tex.in_mathzone }
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

	s({ trig = "tld", snippetType = "autosnippet" },
		fmta(
			'\\tilde{<>}',
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

	s({ trig = "bar", snippetType = "autosnippet" },
		fmta(
			'\\bar{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "bsl", snippetType = "autosnippet" },
		fmta(
			'\\boldsymbol{<>}',
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

	s({ trig = 'dgg', snippetType = 'autosnippet' },
		{
			t('\\dagger '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'df', snippetType = 'autosnippet' },
		{ t('\\,d ') },
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'bgg', snippetType = 'autosnippet' },
		{
			t('\\bigg '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'rvr', snippetType = 'autosnippet' },
		{
			t('\\rvert '),
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

	s({ trig = "dets", snippetType = "autosnippet" },
		fmta(
			'\\det{(<>)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "detm", snippetType = "autosnippet" },
		fmta([[\det{\begin{vmatrix}
	<>
\end{vmatrix}}
]],
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "mtrx", snippetType = "autosnippet" },
		fmta([[\begin{pmatrix}
	<>
\end{pmatrix}
]],
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "ln", snippetType = "autosnippet" },
		fmta(
			'\\ln{\\left(<>\\right)}',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "exp", snippetType = "autosnippet" },
		fmta(
			'\\exp\\left(<>\\right)',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "bra", snippetType = "autosnippet" },
		fmta(
			'\\left\\langle <>\\right|',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "ket", snippetType = "autosnippet" },
		fmta(
			'\\left| <>\\right\\rangle',
			{
				i(1),
			}
		),
		{ condition = tex.in_mathzone }
	),

	s({ trig = "brkt", snippetType = "autosnippet" },
		fmta(
			'\\left\\langle <>\\middle| <>\\right\\rangle',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_mathzone }
	),
}
