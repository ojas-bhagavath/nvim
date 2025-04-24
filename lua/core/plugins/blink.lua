return {
    "saghen/blink.cmp",
    version = "*",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
        cmdline = {
            enabled = true,
            completion = {
                menu = {
                    auto_show = true,
                },
            },
            keymap = {
                ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
            },
        },
        snippets = { preset = "luasnip" },
        keymap = {
            preset = "default",
            ["<C-e>"] = { "hide" },
            ["<C-y>"] = { "select_and_accept" },
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            ["<C-l>"] = { "snippet_forward", "fallback" },
            ["<C-h>"] = { "snippet_backward", "fallback" },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        completion = {
            menu = { border = "rounded" },
            documentation = { window = { border = "rounded" } },
        },
        signature = {
            enabled = true,
            window = { border = "rounded" },
        },
        sources = {
            providers = {
                snippets = {
                    score_offset = 100,
                },
            },
            default = {
                "snippets",
                "lsp",
                "buffer",
                "path",
            },
        },
    },
    opts_extend = { "sources.default" },
}
