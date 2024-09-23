local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'vsp', snippetType = 'autosnippet' },
		fmta(
			'\\vspace{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'hsp', snippetType = 'autosnippet' },
		fmta(
			'\\hspace{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'nwp', snippetType = 'autosnippet' },
		{
			t('\\newpage'),
		},
		{ condition = helper.line_begin }
	),

	s({ trig = 'clp', snippetType = 'autosnippet' },
		{
			t('\\clearpage'),
		},
		{ condition = helper.line_begin }
	),

	s({ trig = 'qnt', snippetType = 'autosnippet' },
		fmta(
			'\\qty{<>}{<>}',
			{
				i(1),
				i(2),
			}
		)
	),

	s({ trig = 'qrt', snippetType = 'autosnippet' },
		fmta(
			'\\qtyrange{<>}{<>}{<>}',
			{
				i(1),
				i(2),
				i(3),
			}
		)
	),

	s({ trig = 'snr', snippetType = 'autosnippet' },
		fmta(
			'\\num{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'snt', snippetType = 'autosnippet' },
		fmta(
			'\\unit{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'tbf', snippetType = 'autosnippet' },
		fmta(
			'\\textbf{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'tlc', snippetType = 'autosnippet' },
		fmta(
			'\\textit{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'tsp', snippetType = 'autosnippet' },
		fmta(
			'\\textsuperscript{<>}',
			{
				i(1),
			}
		)
	),


	s({ trig = 'tsb', snippetType = 'autosnippet' },
		fmta(
			'\\textsubscript{<>}',
			{
				i(1),
			}
		)
	),

	s({ trig = 'spc', snippetType = 'autosnippet' },
		fmta(
			'\\supercite{<>}',
			{
				i(1),
			}
		)
	),
}
