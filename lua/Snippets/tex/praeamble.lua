local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'pkg', snippetType = 'autosnippet' },
		fmta(
			'\\usepackage{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'pks', snippetType = 'autosnippet' },
		fmta(
			'\\usepackage[<>]{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = helper.line_begin }
	),
}
