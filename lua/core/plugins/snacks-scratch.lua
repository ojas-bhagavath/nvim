return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        scratch = {
            win = {
                width = 0.8,
                height = 0.8,
                border = "rounded",
            },
        },
    },
    keys = {
        {
            "<leader>.",
            function()
                Snacks.scratch()
            end,
            desc = "Open Scratch Buffer",
        },
        {
            "<leader>,",
            function()
                Snacks.scratch({ ft = "markdown" })
            end,
            desc = "Open Scratch Markdown Buffer",
        },
        {
            "<leader>S",
            function()
                Snacks.scratch.select()
            end,
            desc = "Select Scratch Buffer",
        },
        {
            "<leader>dps",
            function()
                Snacks.profiler.scratch()
            end,
            desc = "Profiler Scratch Buffer",
        },
    },
}
