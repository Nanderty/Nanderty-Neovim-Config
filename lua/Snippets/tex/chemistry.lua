local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = ',,', snippetType = 'autosnippet' },
		fmta(
			'\\ch{<>->>[<>][<>]<>}\\par',
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		)
	),
}
