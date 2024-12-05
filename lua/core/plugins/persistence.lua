return {
    "folke/persistence.nvim",
    lazy = false,
    opts = {},
    keys = {
        {
            "<leader>qs",
            function()
                require("persistence").select()
            end,
            desc = "Session Select",
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
