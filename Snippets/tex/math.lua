local in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
	s({ trig = '/', snippetType = 'autosnippet' },
		fmta(
			'\\frac{<>}{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = in_mathzone }
	),
	s({ trig = "in", snippetType = "autosnippet" },
		fmta(
			'\\int_{<>}^{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = in_mathzone }
	),
	s({ trig = 'df', snippetType = 'autosnippet' },
		{ t('\\diff ') },
		{ condition = in_mathzone }
	),
}
