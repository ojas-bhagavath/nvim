return {
    s({ trig = "//", snippetType = "autosnippet" }, fmta("(<>)/(<>)", { i(1), i(2) }), { condition = in_mathzone }),
    s({ trig = "emp", snippetType = "autosnippet" }, t("diameter"), { condition = in_mathzone }),
    s({ trig = "inft", snippetType = "autosnippet" }, t("infinity"), { condition = in_mathzone }),
    s({ trig = "ddx", snippetType = "autosnippet" }, fmta("(d <>)/(d <>)", { i(1), i(2) }), { condition = in_mathzone }),
    s({ trig = "pdx", snippetType = "autosnippet" }, fmta("(partial <>)/(partial <>)", { i(1), i(2) }), { condition = in_mathzone }),
}
