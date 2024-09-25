---@diagnostic disable: undefined-global
-- local function env(name)
--     local lnum = vim.fn["vimtex#env#is_inside"](name)[1]
--     local cnum = vim.fn["vimtex#env#is_inside"](name)[2]
--     return (lnum > 0 and cnum > 0)
-- end

local function env(name)
    local is_inside = vim.fn["vimtex#env#is_inside"](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
local function in_list()
    return env("itemize") or env("enumerate")
end
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
    }),

    s({ trig = "-", snippetType = "autosnippet" }, { t("\\item ") }, { condition = conds.line_begin * in_list }),
}
