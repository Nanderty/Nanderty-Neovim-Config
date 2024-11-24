local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'tikzfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
		\begin{tikzpicture}
			<>
		\end{tikzpicture}
	\caption{<>
	}
	\label{fig:<>}
\end{figure}
]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'imfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
	\includegraphics
	[<>]
	{<>}
	\caption{<>
	}
	\label{fig:<>}
\end{figure}
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

	s({ trig = 'pdfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
	{\includegraphics[<>]{<>}}
	\caption{<>
	}
	\label{fig:<>}
\end{figure}
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
