local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {
	s({ trig = 'chfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{scheme}[!h]
	\centering
	\chemfig {
		<>
	}
	\caption{<>
	}
	\label{sch:<>}
\end{scheme}
]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'chsch', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{scheme}[!h]
	\centering
	\schemestart
		\chemname{
			\chemfig {
				<>
			}
		}{}
	\schemestop
	\caption{<>
	}
	\label{sch:<>}
\end{scheme}
]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'scm', snippetType = 'autosnippet' },
		fmta(
			[[
\schemestart
<>
\schemestop
]],
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'ssc', snippetType = 'autosnippet' },
		fmta(
			[[
\subscheme {
	<>
}
]],
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'chf', snippetType = 'autosnippet' },
		fmta(
			[[
\chemfig {
	<>
}
			]],
			{
				i(1),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'arr', snippetType = 'autosnippet' },
		fmta(
			'\\arrow(<>){<>}[<>]',
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'move', snippetType = 'autosnippet' },
		fmta(
			[[
\chemmove[shorten <<=<>,shorten >>=<>]{
	\draw(<>).. controls +(<>) and +(<>).. (<>);
}
			]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'chr', snippetType = 'autosnippet' },
		fmta(
			'\\charge{<>}{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'brc', snippetType = 'autosnippet' },
		fmta(
			[[
\polymerdelim[height = <>, depth = <>,
	open xshift=<>, close xshift=<>,
	indice = \!\!<>]
	{op<>}{cl<>}
]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
				i(7),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'nme', snippetType = 'autosnippet' },
		fmta(
			[[
\chemname{
	<>
}{<>}
]],
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'omi', snippetType = 'autosnippet' },
		{ t('\\ominus') },
		{ condition = tex.in_scheme }
	),

	s({ trig = 'rfr', snippetType = 'autosnippet' },
		fmta(
			[[ \ref{fig:<>}]],
			{
				i(1),
			}
		)
	),

	s({ trig = 'opl', snippetType = 'autosnippet' },
		{ t('\\oplus') },
		{ condition = tex.in_scheme }
	),

	s({ trig = 'nmbr', snippetType = 'autosnippet' },
		fmta(
			[[(-[::<>,0.4,,,draw=none]{\color{<>}<>})]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'crm', snippetType = 'autosnippet' },
		fmta(
			[[\charge{<>=\ominus}{<>}]],
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_scheme }
	),

	s({ trig = 'crp', snippetType = 'autosnippet' },
		fmta(
			[[\charge{<>=\oplus}{<>}]],
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_scheme }
	),

}
