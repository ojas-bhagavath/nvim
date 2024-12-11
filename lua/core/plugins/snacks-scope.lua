return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        scope = {
            enabled = true,
            animate = {
                easing = "outExp",
            },
            treesitter = {
                blocks = {
                    "table_constructor",
                },
            },
        },
    },
}
