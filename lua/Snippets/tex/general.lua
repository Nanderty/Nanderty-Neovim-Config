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

	s({ trig = 'new', snippetType = 'autosnippet' },
		{
			t('\\newpage'),
		},
		{ condition = helper.line_begin }
	),

	s({ trig = 'hh', snippetType = 'autosnippet' },
		fmta(
			'\\SI{<>}{<>}',
			{
				i(1),
				i(2),
			}
		)
	),

	s({ trig = 'bft', snippetType = 'autosnippet' },
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

	s({ trig = 'cte', snippetType = 'autosnippet' },
		fmta(
			'\\supercite{<>}',
			{
				i(1),
			}
		)
	),
}
