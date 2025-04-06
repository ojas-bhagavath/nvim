return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        picker = {
            sources = {
                explorer = {
                    hidden = true,
                    ignored = true,
                },
                files = {
                    hidden = true,
                    ignored = true,
                },
                buffers = {
                    focus = "list",
                    current = false,
                },
            },
            layouts = {
                default = {
                    default = {
                        width = 0.8,
                        min_width = 0,
                        height = 0.8,
                        min_height = 0,
                    },
                    vertical = {
                        width = 0.8,
                        min_width = 0,
                        height = 0.8,
                        min_height = 0,
                    },
                },
            },
        },
    },
    keys = {
        {
            "<leader><space>",
            function()
                Snacks.picker.buffers()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Keymaps",
        },
        {
            "<leader>fc",
            function()
                Snacks.picker.command_history()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Command History",
        },
        {
            "<leader>ff",
            function()
                Snacks.picker.files()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Cwd Files",
        },
        {
            "<leader>fg",
            function()
                Snacks.picker.grep_word()
            end,
            mode = { "n" },
            desc = "Fuzzy Find String Under Cursor",
        },
        {
            "<leader>fk",
            function()
                Snacks.picker.keymaps()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Keymaps",
        },
        {
            "<leader>fp",
            function()
                Snacks.picker.projects()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Projects",
        },
        {
            "<leader>fr",
            function()
                Snacks.picker.recent()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Recent Files",
        },
        {
            "<leader>fs",
            function()
                Snacks.picker.grep()
            end,
            mode = { "n" },
            desc = "Fuzzy Find String In Cwd",
        },
    },
}
