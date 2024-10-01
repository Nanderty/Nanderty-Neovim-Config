local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'tbl', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{table}[!h]
	\caption{<>
	}
	\label{tbl:<>}
	\centering
	\begin{tabular}{ <> }
		<>
	\end{tabular}
\end{table}
]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'tbx', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{table}[!h]
	\caption{<>
	}
	\label{tbl:<>}
	\centering
	\begin{tabularx}{\textwidth}{ <> }
		<>
	\end{tabularx}
\end{table}
]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{ condition = helper.line_begin }
	),

}
