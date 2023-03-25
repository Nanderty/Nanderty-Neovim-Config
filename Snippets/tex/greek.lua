local in_mathzone = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
	s({ trig = "pi", snippetType = "autosnippet" },
		{
			t("\\pi"),
		},
		{ condition = in_mathzone }
	),
	s({ trig = "0eps", snippetType = "autosnippet" },
		{
			t("\\epsilon_0"),
		},
		{ condition = in_mathzone }
	),
}
