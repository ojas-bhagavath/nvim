return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        picker = {},
    },
    keys = {
        {
            "<leader>ff",
            function()
                Snacks.picker.files()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Cwd Files",
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
        {
            "<leader>fg",
            function()
                Snacks.picker.grep_word()
            end,
            mode = { "n" },
            desc = "Fuzzy Find String Under Cursor",
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
            "<leader>fk",
            function()
                Snacks.picker.keymaps()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Keymaps",
        },
        {
            "<leader><space>",
            function()
                Snacks.picker.buffers()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Keymaps",
        },
    },
}
