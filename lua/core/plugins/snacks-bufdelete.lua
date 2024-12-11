return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    keys = {
        {
            "<leader>bd",
            function()
                Snacks.bufdelete.delete()
            end,
            mode = { "n" },
            desc = "Delete Buffer",
        },
        {
            "<leader>bo",
            function()
                Snacks.bufdelete.other()
            end,
            mode = { "n" },
            desc = "Delete Other Buffers",
        },
    },
}
