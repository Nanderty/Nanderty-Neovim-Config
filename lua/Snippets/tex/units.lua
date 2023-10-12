local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'twd', snippetType = 'autosnippet' },
		{
			t('\\textwidth'),
		}
	),

}
