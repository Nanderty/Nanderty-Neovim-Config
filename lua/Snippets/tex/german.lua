local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = 'enq', snippetType = 'autosnippet' },
		fmta(
			'\\enquote{<>}',
			{
				i(1),
			}
		)
	),
}
