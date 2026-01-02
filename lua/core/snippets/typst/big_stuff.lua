return {
    s(
        { trig = "sum", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(sum)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("sum_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("sum <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "prod", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(product)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("product_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("product <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "int", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(integral)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("integral_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("integral <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bcup", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(union.big)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("union.big_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("union.big <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bscup", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(union.big.sq)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("union.big.sq_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("union.big.sq <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bcap", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(inter.big)_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("inter.big_(<>)^(<>)<>", { i(1), i(2), i(3) }),
            fmta("inter.big <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "lim", snippetType = "autosnippet" },
        c(1, {
            fmta("limits(lim)_(<>) <>", { i(1), i(2) }),
            fmta("lim_(<>) <>", { i(1), i(2) }),
            fmta("lim <>", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "matr", snippetType = "autosnippet" },
        c(1, {
            fmta('mat(delim:"[",<>)', { (i(1)) }),
            fmta('mat(delim:"|",<>)', { (i(1)) }),
            fmta('mat(delim:"(",<>)', { (i(1)) }),
        })
    ),
}
