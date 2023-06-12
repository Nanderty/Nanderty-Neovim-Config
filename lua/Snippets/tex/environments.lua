local helper = require('Snippets.luasniphelpers')
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
}
