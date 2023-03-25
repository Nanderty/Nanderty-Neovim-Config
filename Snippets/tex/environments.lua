local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
	-- variable environment
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
		{ condition = line_begin }
	),
	-- enumerate environment
	s({ trig = 'enu', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{enumerate*}
	\item <>
\end{enumerate*}
]],
			{
				i(1),
			}
		),
		{ condition = line_begin }
	),
	-- align environment
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
		{ condition = line_begin }
	),
}
