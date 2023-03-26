local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = "pi", snippetType = "autosnippet" },
		{
			t("\\pi"),
		},
		{ condition = tex.in_mathzone }
	),
	s({ trig = "0eps", snippetType = "autosnippet" },
		{
			t("\\epsilon_0"),
		},
		{ condition = tex.in_mathzone }
	),
}
