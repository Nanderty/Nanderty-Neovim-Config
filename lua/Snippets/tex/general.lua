local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
s({ trig = 'new', snippetType = 'autosnippet' },
		{
			t('\\newpage'),
		},
		{ condition = helper.line_begin }
	),
	s({ trig = 'sec', snippetType = 'autosnippet' },
		fmta(
			'\\section*{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
	s({ trig = 'ssec', snippetType = 'autosnippet' },
		fmta(
			'\\subsection*{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
	s({ trig = 'nsec', snippetType = 'autosnippet' },
		fmta(
			'\\newpage\\section*{<>}',
			{
				i(1),
			}
		),
		{ condition = helper.line_begin }
	),
	s({ trig = 'hh', snippetType = 'autosnippet' },
		fmta(
			'\\SI{<>}{<>}',
			{
				i(1),
				i(2),
			}
		)
	),
	s({ trig = 'bf', snippetType = 'autosnippet' },
		fmta(
			'\\textbf{<>}',
			{
				i(1),
			}
		)
	),
	s({ trig = 'cite', snippetType = 'autosnippet' },
		fmta(
			'\\supercite{<>}',
			{
				i(1),
			}
		)
	),
	s({ trig = 'ite', snippetType = 'autosnippet' },
		{ t('\\item') },
		{ condition = helper.line_begin }
	),
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
