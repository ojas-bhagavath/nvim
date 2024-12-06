return {
    "folke/persistence.nvim",
    opts = {},
    keys = {
        {
            "<leader>qs",
            function()
                require("persistence").load()
            end,
            desc = "Load Session (CWD)",
        },
        {
            "<leader>qS",
            function()
                require("persistence").select()
            end,
            desc = "Select Session",
        },
        {
            "<leader>ql",
            function()
                require("persistence").load({ last = true })
            end,
            desc = "Load Last Session",
        },
        {
            "<leader>qd",
            function()
                require("persistence").stop()
            end,
            desc = "Do Not Save Current Session",
        },
        {
            "<leader>qq",
            "<cmd>qa<CR>",
            desc = "Quit",
        },
    },
}
