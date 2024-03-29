local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'nvc', snippetType = 'autosnippet' },
		{
			t('\\invacuo '),
		}
	),

	s({ trig = 'nmr', snippetType = 'autosnippet' },
		{
			t('\\NMR* '),
		}
	),

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

	s({ trig = 'sbd', snippetType = 'autosnippet' },
		fmta(
			'-[::<>]',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'dbd', snippetType = 'autosnippet' },
		fmta(
			'=[::<>]',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'rrw', snippetType = 'autosnippet' },
		fmta(
			'@{<>}',
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),
}
