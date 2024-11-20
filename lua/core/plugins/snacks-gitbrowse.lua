return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        quickfile = { enabled = false },
        statuscolumn = { enabled = true },
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
