return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        explorer = {
            enabled = true,
            replace_netrw = true,
        },
    },
    keys = {
        {
            "<leader>e",
            function()
                Snacks.explorer.open()
            end,
            mode = { "n", "t" },
            desc = "Open Snacks Explorer",
        },
    },
}
