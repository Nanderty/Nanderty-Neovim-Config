local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'nmt', snippetType = 'autosnippet' },
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

	s({ trig = 'tmz', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{itemize}
	\item <>
\end{itemize}
]],
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'itm', snippetType = 'autosnippet' },
		{ t('\\item') },
		{ condition = tex.in_enumerate * helper.line_begin + tex.in_itemize * helper.line_begin }
	),
}
