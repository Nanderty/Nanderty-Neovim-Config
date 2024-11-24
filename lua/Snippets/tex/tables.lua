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

	s({ trig = "mcl", snippetType = "autosnippet" },
		fmta(
			'\\multicolumn{<>}{<>}{<>}',
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = tex.in_table }
	),

	s({ trig = "cln", snippetType = "autosnippet" },
		fmta(
			'\\cline{<>-<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_table }
	),

	s({ trig = 'hln', snippetType = 'autosnippet' },
		{
			t('\\hline'),
		},
		{ condition = tex.in_table }
	),

}
