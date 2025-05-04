return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        terminal = {
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
            "<leader>\\",
            function()
                Snacks.terminal.toggle(nil, { cwd = vim.fn.getcwd() })
            end,
            mode = { "n", "t" },
            desc = "Toggle Terminal",
        },
        {
            "<leader>th",
            function()
                Snacks.terminal.toggle(nil, { cwd = vim.fn.getcwd(), win = { position = "left" } })
            end,
        },
        {
            "<leader>tj",
            function()
                Snacks.terminal.toggle(nil, { cwd = vim.fn.getcwd(), auto_close = false, win = { position = "bottom" } })
            end,
        },
        {
            "<leader>xx",
            function()
                Snacks.terminal.toggle(
                    "python3 " .. vim.fn.expand("%"),
                    { auto_close = false, cwd = vim.fn.getcwd(), win = { position = "bottom", height = 0.3 } }
                )
            end,
            mode = { "n", "t" },
            ft = "python",
        },
    },
}
