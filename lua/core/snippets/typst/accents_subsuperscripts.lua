return {
    s({ trig = "^", wordTrig = false, snippetType = "autosnippet" }, fmta("^(<>)", { i(1) }), { condition = in_mathzone }),
    s({ trig = "_", wordTrig = false, snippetType = "autosnippet" }, fmta("_(<>)", { i(1) }), { condition = in_mathzone }),
    s({ trig = "deg", wordTrig = false, snippetType = "autosnippet" }, t("degree"), { condition = in_mathzone }),
    s({ trig = "inv", wordTrig = false, snippetType = "autosnippet" }, t("^(-1)"), { condition = in_mathzone }),
}
