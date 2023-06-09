local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = 'chmr', snippetType = 'autosnippet' },
		fmta(
			'\\ch{ <> ->>[ <> ][ <> ] <> }\\par',
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		)
	),

	s({ trig = 'chmi', snippetType = 'autosnippet' },
		fmta(
			'\\ch{ <> }',
			{
				i(1),
			}
		)
	),
}
