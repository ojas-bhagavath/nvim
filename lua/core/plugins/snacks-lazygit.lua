return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        lazygit = {
            enabled = true,
            win = {
                relative = "editor",
                position = "float",
                width = 0.8,
                height = 0.8,
                border = "rounded",
            },
        },
    },
    keys = {
        {
            "<leader>gg",
            function()
                Snacks.lazygit.open()
            end,
            mode = { "n" },
            desc = "Lazygit",
        },
    },
}
