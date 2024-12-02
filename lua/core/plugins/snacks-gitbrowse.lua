return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        gitbrowse = {
            notify = true,
        },
    },
    keys = {
        {
            "<leader>go",
            function()
                Snacks.gitbrowse.open()
            end,
            mode = { "n" },
            desc = "Open Remote File",
        },
    },
}
