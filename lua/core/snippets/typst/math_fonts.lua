return {
    s({ trig = "bb(%a)", regTrig = true, snippetType = "autosnippet" }, {
        f(function(_, snip)
            return "bb(" .. snip.captures[1] .. ")"
        end),
    }, { condition = in_mathzone }),

    s({ trig = "cc(%a)", regTrig = true, snippetType = "autosnippet" }, {
        f(function(_, snip)
            return "cal(" .. snip.captures[1] .. ")"
        end),
    }, { condition = in_mathzone }),

    s({ trig = "kk(%a)", regTrig = true, snippetType = "autosnippet" }, {
        f(function(_, snip)
            return "frak(" .. snip.captures[1] .. ")"
        end),
    }, { condition = in_mathzone }),

    s({ trig = "ss(%a)", regTrig = true, snippetType = "autosnippet" }, {
        f(function(_, snip)
            return "scr(" .. snip.captures[1] .. ")"
        end),
    }, { condition = in_mathzone }),
}
