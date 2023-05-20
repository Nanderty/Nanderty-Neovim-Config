local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

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

	s({ trig = 'ite', snippetType = 'autosnippet' },
		{ t('\\item') },
		{ condition = tex.in_enumerate * helper.line_begin }
	),
}
