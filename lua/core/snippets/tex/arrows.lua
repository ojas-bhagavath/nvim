return {
    s({ trig = "-.", snippetType = "autosnippet" }, t("\\to"), { condition = in_mathzone }),
    s({ trig = "-,", snippetType = "autosnippet" }, t("\\leftarrow"), { condition = in_mathzone }),
    s({ trig = "maps", snippetType = "autosnippet" }, t("\\mapsto"), { condition = in_mathzone }),
    s({ trig = "incl", snippetType = "autosnippet" }, t("\\hookrightarrow"), { condition = in_mathzone }),
    s({ trig = "=.", snippetType = "autosnippet" }, t("\\implies"), { condition = in_mathzone }),
    s({ trig = "=,", snippetType = "autosnippet" }, t("\\impliedby"), { condition = in_mathzone }),
    s({ trig = "iff", snippetType = "autosnippet" }, t("\\iff"), { condition = in_mathzone }),
}
