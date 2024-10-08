local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'bgn', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{<>}
	<>
\end{<>}
]],
			{
				i(1),
				i(2),
				rep(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'lgn', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{align*}
	<>
\end{align*}
]],
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'mnp', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{minipage}[<>]{<>\textwidth}
	<>
\end{minipage}
]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = helper.line_begin }
	),

}
