return {
    s({ trig = "wrt", snippetType = "autosnippet" }, t("with respect to"), { condition = in_textzone }),
    s({ trig = "Wrt", snippetType = "autosnippet" }, t("With respect to"), { condition = in_textzone }),
    s({ trig = "tfae", snippetType = "autosnippet" }, t("the following are equivalent:"), { condition = in_textzone }),
    s({ trig = "Tfae", snippetType = "autosnippet" }, t("The following are equivalent:"), { condition = in_textzone }),
    s({ trig = "wlog", snippetType = "autosnippet" }, t("without a loss of generality"), { condition = in_textzone }),
    s({ trig = "Wlog", snippetType = "autosnippet" }, t("Without a loss of generality"), { condition = in_textzone }),
    s({ trig = "qed", snippetType = "snippet" }, t("#align(right)[$qed$]"), { condition = in_textzone }),
}
