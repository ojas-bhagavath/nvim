return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    lazy = true,
    config = function()
        require("luasnip").setup({
            updateevents = "TextChanged,TextChangedI",
            enable_autosnippets = true,
            snip_env = {
                s = require("luasnip").snippet,
                sn = require("luasnip").snippet_node,
                isn = require("luasnip").indent_snippet_node,
                t = require("luasnip").text_node,
                i = require("luasnip").insert_node,
                f = require("luasnip").function_node,
                c = require("luasnip").choice_node,
                d = require("luasnip").dynamic_node,
                r = require("luasnip").restore_node,
                events = require("luasnip.util.events"),
                ai = require("luasnip.nodes.absolute_indexer"),
                l = require("luasnip.extras").lambda,
                rep = require("luasnip.extras").rep,
                p = require("luasnip.extras").partial,
                m = require("luasnip.extras").match,
                n = require("luasnip.extras").nonempty,
                dl = require("luasnip.extras").dynamic_lambda,
                fmt = require("luasnip.extras.fmt").fmt,
                fmta = require("luasnip.extras.fmt").fmta,
                conds = require("luasnip.extras.expand_conditions"),
                postfix = require("luasnip.extras.postfix").postfix,
                types = require("luasnip.util.types"),
                parse = require("luasnip.util.parser").parse_snippet,
                ms = require("luasnip").multi_snippet,
                k = require("luasnip.nodes.key_indexer").new_key,
                in_mathzone = function()
                    return vim.fn["vimtex#syntax#in_mathzone"]() == 1
                end,
                in_textzone = function()
                    return vim.fn["vimtex#syntax#in_mathzone"]() == 0
                end,
                mat = function(args, snip)
                    local rows = tonumber(snip.captures[2])
                    local cols = tonumber(snip.captures[3])
                    local nodes = {}
                    local ins_indx = 1
                    for j = 1, rows do
                        table.insert(nodes, r(ins_indx, tostring(j) .. "x1", i(1)))
                        ins_indx = ins_indx + 1
                        for k = 2, cols do
                            table.insert(nodes, t(" & "))
                            table.insert(nodes, r(ins_indx, tostring(j) .. "x" .. tostring(k), i(1)))
                            ins_indx = ins_indx + 1
                        end
                        table.insert(nodes, t({ " \\\\", "" }))
                    end
                    -- fix last node.
                    nodes[#nodes] = t(" \\\\")
                    return sn(nil, nodes)
                end,
            },
        })

        -- Lua snippets path
        require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/core/snippets/" })

        -- Keybinds
        vim.keymap.set({ "i", "s" }, "<C-l>", function()
            if require("luasnip").expand_or_locally_jumpable() then
                require("luasnip").expand_or_jump()
            end
        end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-h>", function()
            if require("luasnip").locally_jumpable(-1) then
                require("luasnip").jump(-1)
            end
        end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-o>", function()
            if require("luasnip").choice_active() then
                require("luasnip").change_choice(1)
            end
        end, { silent = true })
        vim.keymap.set(
            "n",
            "<leader>rs",
            '<cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/core/snippets/"})<CR>',
            { desc = "Reload Snippets" }
        )
    end,
}
