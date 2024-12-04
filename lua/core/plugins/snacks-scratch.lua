return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        scratch = {
            ft = "markdown",
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
                Snacks.scratch.open()
            end,
            desc = "Toggle Scratch Buffer",
        },
    },
}
