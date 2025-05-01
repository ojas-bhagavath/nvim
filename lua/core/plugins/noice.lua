return {
    "folke/noice.nvim",
    dependencies = {
        { "MunifTanjim/nui.nvim", commit = "8d3bce9764e627b62b07424e0df77f680d47ffdb" },
    },
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
