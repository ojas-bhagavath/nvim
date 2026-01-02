return {
    s({ trig = "cap", snippetType = "autosnippet" }, t("union"), { condition = in_mathzone }),
    s({ trig = "cup", snippetType = "autosnippet" }, t("inter"), { condition = in_mathzone }),
    s({ trig = "scup", snippetType = "autosnippet" }, t("union.sq"), { condition = in_mathzone }),
    s({ trig = "scap", snippetType = "autosnippet" }, t("inter.sq"), { condition = in_mathzone }),

    s(
        { trig = "sub", snippetType = "autosnippet" },
        c(1, {
            t("subset.eq"),
            t("subset.neq"),
            t("subset"),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bus", snippetType = "autosnippet" },
        c(1, {
            t("supset.eq"),
            t("supset.neq"),
            t("supset"),
        }),
        { condition = in_mathzone }
    ),
}
