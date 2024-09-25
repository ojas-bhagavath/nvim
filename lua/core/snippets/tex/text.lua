---@diagnostic disable: undefined-global
return {
    s({ trig = "wrt", snippetType = "autosnippet" }, t("with respect to"), { condition = in_textzone }),
    s({ trig = "tfae", snippetType = "autosnippet" }, t("the following are equivalent:"), { condition = in_textzone }),
}
