local helper = require('Snippets.luasniphelpers')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'beg', snippetType = 'autosnippet' },
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

	s({ trig = 'enu', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{enumerate}
	\item <>
\end{enumerate}
]],
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'ali', snippetType = 'autosnippet' },
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
}
