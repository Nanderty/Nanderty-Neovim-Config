local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'enq', snippetType = 'autosnippet' },
		fmta(
			'\\enquote{<>}',
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
}
