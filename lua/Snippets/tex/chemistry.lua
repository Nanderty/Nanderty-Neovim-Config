local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'dbg', snippetType = 'autosnippet' },
		{
			t('\\setchemfig{scheme debug=true}'),
		},
		{ condition = tex.in_scheme }
	),

	s({ trig = 'nvc', snippetType = 'autosnippet' },
		{
			t('\\invacuo '),
		}
	),

	s({ trig = 'cmpd', snippetType = 'autosnippet' },
		fmta(
			'\\cmpd{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'cnp', snippetType = 'autosnippet' },
		fmta(
			'\\cip{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'nmr', snippetType = 'autosnippet' },
		fmta(
			'\\NMR*{<>, <>}',
			{
				i(1),
				i(2),
			}
		)
	),

	s({ trig = 'stp', snippetType = 'autosnippet' },
		fmta(
			'\\isotope*{<>,<>}',
			{
				i(1),
				i(2),
			}
		)
	),

	s({ trig = 'jpc', snippetType = 'autosnippet' },
		fmta(
			'\\iupac{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'cpnd', snippetType = 'autosnippet' },
		fmta(
			'(\\cmpd{<>}, \\qty{<>}{\\gram}, \\qty{<>}{\\milli\\mol}, \\qty{<>}{\\equiv})',
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		)
	),

	s({ trig = 'chmi', snippetType = 'autosnippet' },
		fmta(
			'\\ch{ <> }',
			{
				i(1),
			}
		)
	),

	s({ trig = 'sbd', snippetType = 'autosnippet' },
		fmta(
			'-[::<>]',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'dbd', snippetType = 'autosnippet' },
		fmta(
			'=[::<>]',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'rrw', snippetType = 'autosnippet' },
		fmta(
			'@{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),
}
