local tex = require('Snippets.luasniphelperslatex')
local helper = require('Snippets.luasniphelpers')

return {

	s({ trig = 'chfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
	\chemfig {
		<>
	}
	\caption{
		<>
	}
	\label{fig:<>}
\end{figure}
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
\begin{figure}[!h]
	\centering
	\schemestart
	\chemfig {
		<>
	}
	\schemestop
	\caption{
		<>
	}
	\label{fig:<>}
\end{figure}
]],
			{
				i(1),
				i(2),
				i(3),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'imfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
	\includegraphics
	[<>]
	{<>}
	\caption{
		<>
	}
	\label{fig:<>}
\end{figure}
]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'pdfig', snippetType = 'autosnippet' },
		fmta(
			[[
\begin{figure}[!h]
	\centering
	\resizebox
	{<>}
	{!}
	{\input{<>}}
	\caption{
		<>
	}
	\label{fig:<>}
\end{figure}
]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{ condition = helper.line_begin }
	),

	s({ trig = 'sch', snippetType = 'autosnippet' },
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
		{ condition = tex.in_figure }
	),

	s({ trig = 'sus', snippetType = 'autosnippet' },
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
		{ condition = tex.in_figure }
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
		{ condition = tex.in_figure }
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
		{ condition = tex.in_figure }
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
		{ condition = tex.in_figure }
	),

	s({ trig = 'chr', snippetType = 'autosnippet' },
		fmta(
			'\\charge{<>}{<>}',
			{
				i(1),
				i(2),
			}
		),
		{ condition = tex.in_figure }
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
		{ condition = tex.in_figure }
	),

	s({ trig = 'omi', snippetType = 'autosnippet' },
		{ t('\\ominus') },
		{ condition = tex.in_figure }
	),

	s({ trig = 'opl', snippetType = 'autosnippet' },
		{ t('\\oplus') },
		{ condition = tex.in_figure }
	),
}
