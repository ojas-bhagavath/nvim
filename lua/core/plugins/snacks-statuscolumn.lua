return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        statuscolumn = {
            enabled = true,
            right = {},
            left = { "mark", "sign", "fold", "git" },
        },
    },
}
