return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    main = "noice",
    opts = {
        cmdline = {
            format = {
                telescope = { pattern = { "^:%s*Telescope%s+" }, icon = "" },
            },
        },
        popupmenu = {
            backend = "cmp",
        },
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            command_palette = true,
            long_message_to_split = true,
            inc_rename = false,
        },
    },
}
