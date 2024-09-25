---@diagnostic disable: undefined-global
return {
    s(
        { trig = "init", snippetType = "autosnippet" },
        fmta(
            [[
\documentclass[<>]{<>}
\input{<>} %source your preamble here
\addbibresource{<>} %source your bib file here
\title{<>}
\author{<>}
\renewcommand{\maketitle}{
    \begin{center}
        \Huge\bfseries
        \thetitle\\
        \vspace{4mm}
        \Large
        \theauthor
    \end{center}
    \rule{\linewidth}{0.5pt}
}
\begin{document}
\maketitle
<>
\clearpage
\printbibliography
\end{document}
        ]],
            {
                i(1, "12pt,a4paper"),
                i(2, "report"),
                i(3, "/home/ojas/Stuff/LaTeX/preamble.tex"),
                i(4, "/home/ojas/Stuff/LaTeX/references.bib"),
                i(5),
                i(6, "Ojas G Bhagavath"),
                i(7),
            }
        ),
        { condition = conds.line_begin }
    ),

    s(
        { trig = "env", snippetType = "snippet" },
        fmta(
            [[
          \begin{<>}[<>]
          <>
          \end{<>}

           ]],
            { i(1), i(2), i(3), rep(1) }
        )
    ),

    s({ trig = "\\\\", wordTrig = false, snippetType = "autosnippet" }, {
        t({ "\\\\", "" }),
    }, { condition = conds.line_end }),
}
