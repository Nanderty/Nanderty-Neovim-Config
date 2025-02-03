local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'prg', snippetType = 'autosnippet' },
		fmta(
			[[
				<<p>>
					<>
				<</p>>
			]],
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'lnk', snippetType = 'autosnippet' },
		fmta(
			[[<<a href="<>">><><</a>>]],
			{
				i(1),
				i(2)
			}
		)
	),

}
