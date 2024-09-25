return {
    s(
        { trig = "env", snippetType = "autosnippet" },
        fmta(
            [[
          \begin{<>}[<>]
          <>
          \end{<>}

           ]],
            { i(1), i(2), i(3), rep(1) }
        ),
        { condition = in_mathzone }
    ),
}
