---@diagnostic disable: undefined-global
local mat = function(_, snip)
    local rows = tonumber(snip.captures[2])
    local cols = tonumber(snip.captures[3])
    local nodes = {}
    local ins_indx = 1
    for j = 1, rows do
        table.insert(nodes, r(ins_indx, tostring(j) .. "x1", i(1, "0")))
        ins_indx = ins_indx + 1
        for k = 2, cols do
            table.insert(nodes, t(" & "))
            table.insert(nodes, r(ins_indx, tostring(j) .. "x" .. tostring(k), i(1, "0")))
            ins_indx = ins_indx + 1
        end
        table.insert(nodes, t({ " \\\\", "" }))
    end
    -- fix last node.
    nodes[#nodes] = t(" \\\\")
    return sn(nil, nodes)
end

return {
    s({ trig = "lrr", snippetType = "autosnippet" }, fmta("\\left(<>\\right)", { i(1) }), { condition = in_mathzone }),
    s({ trig = "lrs", snippetType = "autosnippet" }, fmta("\\left[<>\\right]", { i(1) }), { condition = in_mathzone }),
    s({ trig = "lrc", snippetType = "autosnippet" }, fmta("\\left\\{<>\\right\\}", { i(1) }), { condition = in_mathzone }),
    s({ trig = "lrm", snippetType = "autosnippet" }, fmta("\\left|<>\\right|", { i(1) }), { condition = in_mathzone }),
    s({ trig = "lrn", snippetType = "autosnippet" }, fmta("\\left\\|<>\\right\\|", { i(1) }), { condition = in_mathzone }),
    s({ trig = "lra", snippetType = "autosnippet" }, fmta("\\left\\langle <> \\right\\rangle", { i(1) }), { condition = in_mathzone }),

    s(
        { trig = "sum", snippetType = "autosnippet" },
        c(1, {
            fmta("\\sum\\limits_{<>}^{<>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\sum{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "prod", snippetType = "autosnippet" },
        c(1, {
            fmta("\\prod\\limits_{<>}^{<>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\prod{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "int", snippetType = "autosnippet" },
        c(1, {
            fmta("\\int\\limits_{<>}^{<>}{<>}\\,d<>", { i(1), i(2), i(3), i(4) }),
            fmta("\\int{<>}\\,d<>", { i(1), i(2) }),
        }),
        { condition = in_mathzone }
    ),

    s(
        { trig = "bcup", snippetType = "autosnippet" },
        c(1, {
            fmta("\\bigcup_{<>}^{<>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\bigcup_{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bscup", snippetType = "autosnippet" },
        c(1, {
            fmta("\\bigsqcup_{<>}^{<>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\bigsqcup_{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "bcap", snippetType = "autosnippet" },
        c(1, {
            fmta("\\bigcap_{<>}^{<>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\bigcap{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),
    s(
        { trig = "lim", snippetType = "autosnippet" },
        c(1, {
            fmta("\\lim\\limits_{<> \\to <>}{<>}", { i(1), i(2), i(3) }),
            fmta("\\lim{<>}", i(1)),
        }),
        { condition = in_mathzone }
    ),

    -- matrices!
    s(
        { trig = "([bBpvV])mat(%d+)x(%d+)", regTrig = true, name = "matrix", dscr = "matrix trigger lets go", snippetType = "autosnippet" },
        fmt(
            [[
    \begin{<>}
    <>
    \end{<>}

    ]],
            {
                f(function(_, snip)
                    return snip.captures[1] .. "matrix" -- captures matrix type
                end),
                d(1, mat),
                f(function(_, snip)
                    return snip.captures[1] .. "matrix" -- i think i could probably use a repeat node but whatever
                end),
            },
            { delimiters = "<>" }
        ),
        { condition = in_mathzone }
    ),
}
