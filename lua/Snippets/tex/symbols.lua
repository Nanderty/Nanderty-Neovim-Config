local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = 'chi', snippetType = 'autosnippet' },
		{
			t('\\chi'),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'sig', snippetType = 'autosnippet' },
		{
			t('\\sigma'),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'nu', snippetType = 'autosnippet' },
		{
			t('\\nu'),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'alp', snippetType = 'autosnippet' },
		{
			t('\\alpha'),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'del', snippetType = 'autosnippet' },
		{
			t('\\delta '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'phi', snippetType = 'autosnippet' },
		{
			t('\\phi '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'Phi', snippetType = 'autosnippet' },
		{
			t('\\Phi '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'pi', snippetType = 'autosnippet' },
		{
			t('\\pi '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'nab', snippetType = 'autosnippet' },
		{
			t('\\nabla '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'mu', snippetType = 'autosnippet' },
		{
			t('\\mu '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = 'eps', snippetType = 'autosnippet' },
		{
			t('\\epsilon '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = '0mu', snippetType = 'autosnippet' },
		{
			t('\\mu_0 '),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = '0eps', snippetType = 'autosnippet' },
		{
			t('\\epsilon_0 '),
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
			t('\\Rightarrow'),
		},
		{ condition = tex.in_mathzone }
	),
}
