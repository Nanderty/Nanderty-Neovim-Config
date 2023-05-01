local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'inf', snippetType = 'autosnippet' },
		{
			t('\\infty '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'nab', snippetType = 'autosnippet' },
		{
			t('\\nabla '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'cdo', snippetType = 'autosnippet' },
		{
			t('\\cdot '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'tim', snippetType = 'autosnippet' },
		{
			t('\\times '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'app', snippetType = 'autosnippet' },
		{
			t('\\approx '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'leq', snippetType = 'autosnippet' },
		{
			t('\\leq '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'geq', snippetType = 'autosnippet' },
		{
			t('\\geq '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'neq', snippetType = 'autosnippet' },
		{
			t('\\neq '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Ria', snippetType = 'autosnippet' },
		{
			t('\\Rightarrow '),
		},
		{ condition = tex.in_mathzone }
	),
}
