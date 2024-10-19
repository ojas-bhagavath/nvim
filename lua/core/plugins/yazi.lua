return {
    "mikavilpas/yazi.nvim",
    event = { "VeryLazy" },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        {
            "<leader>e",
            function()
                require("yazi").yazi()
            end,
            desc = "yazi",
        },
    },
    opts = {
        open_for_directories = true,
        open_multiple_tabs = true,
    },
}
