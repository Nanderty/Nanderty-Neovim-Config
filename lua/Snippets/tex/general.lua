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

	s({ trig = 'snt', snippetType = 'autosnippet' },
		fmta(
			'\\SI{<>}{<>}',
			{
				i(1),
				i(2),
			}
		)
	),

	s({ trig = 'srt', snippetType = 'autosnippet' },
		fmta(
			'\\SIrange{<>}{<>}{<>}',
			{
				i(1),
				i(2),
				i(3),
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
