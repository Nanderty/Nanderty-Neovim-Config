local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'upa', snippetType = 'autosnippet' },
		fmta(
			'\\usepackage{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'opa', snippetType = 'autosnippet' },
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
