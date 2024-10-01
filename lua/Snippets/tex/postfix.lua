local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'bgn', snippetType = 'autosnippet' },
		fmta(
			[[
\lstinputlisting[
	language = <>,
	firstline = <>,
	caption = {
		<>
	},
]{<>}
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

	s({ trig = 'pbl', snippetType = 'autosnippet' },
		{
			t('\\printbibliography[heading=none]')
		},
		{ condition = helper.line_begin }
	),

}
