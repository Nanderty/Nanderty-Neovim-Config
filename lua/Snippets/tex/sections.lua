local helper = require('Snippets.luasniphelpers')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'sec', snippetType = 'autosnippet' },
		fmta(
			'\\section{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nsec', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\section{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'ssec', snippetType = 'autosnippet' },
		fmta(
			'\\subsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nssec', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\subsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'ssec', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\subsubsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nsssec', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\subsubsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
}
