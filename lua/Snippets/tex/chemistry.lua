local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = 'chg', snippetType = 'autosnippet' },
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

	s({ trig = 'chs', snippetType = 'autosnippet' },
		fmta(
			'\\ch{ <> }',
			{
				i(1),
			}
		)
	),
}
