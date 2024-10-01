return {
    "folke/flash.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = {},
    keys = {
        {
            "!",
            mode = { "n", "x", "o" },
            function()
                require("flash").jump()
            end,
            desc = "Flash",
        },
    },
}
