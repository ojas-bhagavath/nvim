return {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
        options = { "buffers", "curdir", "tabpages", "winsize", "terminal" },
    },
    keys = {
        {
            "<leader>qS",
            function()
                require("persistence").load()
            end,
            desc = "Load Session (CWD)",
        },
        {
            "<leader>qs",
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
