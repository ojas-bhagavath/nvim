return {
    s({ trig = ".*", snippetType = "autosnippet" }, t("dot"), { condition = in_mathzone }),
    s({ trig = "circ", snippetType = "autosnippet" }, t("compose"), { condition = in_mathzone }),
    s({ trig = "-+", snippetType = "autosnippet" }, t("minus.plus"), { condition = in_mathzone }),
    s({ trig = "o*", snippetType = "autosnippet" }, t("dot.o"), { condition = in_mathzone }),
    s({ trig = "o+", snippetType = "autosnippet" }, t("plus.o"), { condition = in_mathzone }),
    s({ trig = "ox", snippetType = "autosnippet" }, t("times.o"), { condition = in_mathzone }),
    s({ trig = "+-", snippetType = "autosnippet" }, t("plus.minus"), { condition = in_mathzone }),
    s({ trig = "x*", snippetType = "autosnippet" }, t("times"), { condition = in_mathzone }),
}
