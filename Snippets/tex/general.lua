return {
	s({ trig = "sec", snippetType = "autosnippet" },
		fmta(
			'\\section*{<>}',
			{
				i(1),
			}
		),
		{ condition = line_begin }
	),
}
