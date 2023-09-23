local helper = require('Snippets.luasniphelpers')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'tbl', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{table}[!h]
	\centering
	\begin{tabular}{ <> }
		<>
	\end{tabular}
	\caption{<>
	}
	\label{fig:<>}
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
	\centering
	\begin{tabularx}{\textwidth}{ <> }
		<>
	\end{tabularx}
	\caption{<>
	}
	\label{fig:<>}
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
