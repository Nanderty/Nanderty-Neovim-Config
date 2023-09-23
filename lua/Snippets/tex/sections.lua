local helper = require('Snippets.luasniphelpers')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'sct', snippetType = 'autosnippet' },
		fmta(
			'\\section{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nsc', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\section{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'ssc', snippetType = 'autosnippet' },
		fmta(
			'\\subsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nssc', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\subsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'sss', snippetType = 'autosnippet' },
		fmta(
			'\\subsubsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'nsss', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\subsubsection{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
}
