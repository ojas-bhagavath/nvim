return {
    "folke/noice.nvim",
    enabled = false,
    event = "VeryLazy",
    main = "noice",
    opts = {
        cmdline = {
            format = {
                man = { pattern = { "^:%s*Man%s+" }, icon = " " },
            },
        },
        popupmenu = {
            backend = "cmp",
        },
        lsp = {
            progress = {
                enabled = false,
            },
        },
        presets = {
            command_palette = true,
            long_message_to_split = true,
            inc_rename = false,
        },
    },
}
