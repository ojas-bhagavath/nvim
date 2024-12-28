return {
    "saghen/blink.cmp",
    version = "*",
    events = { "InsertEnter", "CmdEnter" },
    opts = {
        keymap = {
            preset = "default",
            ["<C-e>"] = {},
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
            ["<C-b>"] = { "scroll_documentation_up", "fallback" },
            ["<C-f>"] = { "scroll_documentation_down", "fallback" },
            ["<C-l>"] = { "select_and_accept", "snippet_forward", "fallback" },
            ["<C-h>"] = { "snippet_backward", "fallback" },
            cmdline = {
                ["<C-l>"] = { "select_and_accept", "fallback" },
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },
            },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
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
