local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'clr', snippetType = 'autosnippet' },
		fmta(
			'{\\color{<>}<>}',
			{
				i(1),
				i(2),
			}
		)
	),

}
