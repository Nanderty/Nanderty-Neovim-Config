local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'alp', snippetType = 'autosnippet' },
		{
			t('\\alpha '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'bet', snippetType = 'autosnippet' },
		{
			t('\\beta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'gam', snippetType = 'autosnippet' },
		{
			t('\\gamma '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Gam', snippetType = 'autosnippet' },
		{
			t('\\Gamma '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'del', snippetType = 'autosnippet' },
		{
			t('\\delta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Del', snippetType = 'autosnippet' },
		{
			t('\\Delta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'eps', snippetType = 'autosnippet' },
		{
			t('\\epsilon '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'veps', snippetType = 'autosnippet' },
		{
			t('\\varepsilon '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = '0eps', snippetType = 'autosnippet' },
		{
			t('\\epsilon_0 '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'zet', snippetType = 'autosnippet' },
		{
			t('\\zeta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'eta', snippetType = 'autosnippet' },
		{
			t('\\eta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'the', snippetType = 'autosnippet' },
		{
			t('\\theta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'The', snippetType = 'autosnippet' },
		{
			t('\\Theta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'vth', snippetType = 'autosnippet' },
		{
			t('\\vartheta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'iot', snippetType = 'autosnippet' },
		{
			t('\\iota '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'vth', snippetType = 'autosnippet' },
		{
			t('\\vartheta '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'iot', snippetType = 'autosnippet' },
		{
			t('\\iota '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'kap', snippetType = 'autosnippet' },
		{
			t('\\kappa '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'lam', snippetType = 'autosnippet' },
		{
			t('\\lambda '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Lam', snippetType = 'autosnippet' },
		{
			t('\\Lambda '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'mu', snippetType = 'autosnippet' },
		{
			t('\\mu '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = '0mu', snippetType = 'autosnippet' },
		{
			t('\\mu_0 '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'nu', snippetType = 'autosnippet' },
		{
			t('\\nu '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'xi', snippetType = 'autosnippet' },
		{
			t('\\xi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Xi', snippetType = 'autosnippet' },
		{
			t('\\Xi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'pi', snippetType = 'autosnippet' },
		{
			t('\\pi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Pi', snippetType = 'autosnippet' },
		{
			t('\\Pi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'rho', snippetType = 'autosnippet' },
		{
			t('\\rho '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'vrh', snippetType = 'autosnippet' },
		{
			t('\\varrho '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'sig', snippetType = 'autosnippet' },
		{
			t('\\sigma '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Sig', snippetType = 'autosnippet' },
		{
			t('\\Sigma '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'vsi', snippetType = 'autosnippet' },
		{
			t('\\vsigma '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'tau', snippetType = 'autosnippet' },
		{
			t('\\tau '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'ups', snippetType = 'autosnippet' },
		{
			t('\\upsilon '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Ups', snippetType = 'autosnippet' },
		{
			t('\\Upsilon '),
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

	s({ trig = 'vph', snippetType = 'autosnippet' },
		{
			t('\\varphi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'chi', snippetType = 'autosnippet' },
		{
			t('\\chi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'psi', snippetType = 'autosnippet' },
		{
			t('\\psi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Psi', snippetType = 'autosnippet' },
		{
			t('\\Psi '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'ome', snippetType = 'autosnippet' },
		{
			t('\\omega '),
		},
		{ condition = tex.in_mathzone }
	),

	s({ trig = 'Ome', snippetType = 'autosnippet' },
		{
			t('\\Omega '),
		},
		{ condition = tex.in_mathzone }
	),
}
