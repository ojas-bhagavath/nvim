return {
    "mikavilpas/yazi.nvim",
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
    },
}
