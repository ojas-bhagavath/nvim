return {
    "saghen/blink.cmp",
    version = "*",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {
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
            cmdline = {
                ["<C-y>"] = { "select_and_accept", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
            },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        completion = {
            menu = { border = "rounded" },
            documentation = { window = { border = "rounded" } },
        },
        signature = { window = { border = "rounded" } },
        sources = {
            default = {
                "luasnip",
                "snippets",
                "lsp",
                "buffer",
                "path",
            },
        },
    },
    opts_extend = { "sources.default" },
}
