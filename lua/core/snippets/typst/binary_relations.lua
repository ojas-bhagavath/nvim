return {
    s({ trig = "~~", snippetType = "autosnippet" }, t("approx"), { condition = in_mathzone }),
    s({ trig = "sim", snippetType = "autosnippet" }, t("tilde.op"), { condition = in_mathzone }),
    s({ trig = "~-", snippetType = "autosnippet" }, t("tilde.eq"), { condition = in_mathzone }),
    s({ trig = "~=", snippetType = "autosnippet" }, t("tilde.equiv"), { condition = in_mathzone }),
    s(
        { trig = "normal", snippetType = "autosnippet" },
        c(1, {
            t("lt.tri.eq"),
            t("lt.tri"),
        }),
        { condition = in_mathzone }
    ),
}
