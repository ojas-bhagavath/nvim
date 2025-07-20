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
                Snacks.terminal.toggle(nil, {
                    cwd = vim.fn.getcwd(),
                    auto_close = true,
                    win = {
                        position = "left",
                        height = 1,
                        width = 0.4,
                    },
                })
            end,
            mode = { "n", "t" },
            desc = "Terminal Left",
        },
        {
            "<leader>tj",
            function()
                Snacks.terminal.toggle(nil, {
                    cwd = vim.fn.getcwd(),
                    auto_close = true,
                    win = {
                        position = "bottom",
                        height = 0.4,
                        width = 1,
                    },
                })
            end,
            mode = { "n", "t" },
            desc = "Terminal Bottom",
        },
        {
            "<leader>tk",
            function()
                Snacks.terminal.toggle(nil, {
                    cwd = vim.fn.getcwd(),
                    auto_close = true,
                    win = {
                        position = "top",
                        height = 0.4,
                        width = 1,
                    },
                })
            end,
            mode = { "n", "t" },
            desc = "Terminal Top",
        },
        {
            "<leader>tl",
            function()
                Snacks.terminal.toggle(nil, {
                    cwd = vim.fn.getcwd(),
                    auto_close = true,
                    win = {
                        position = "right",
                        height = 1,
                        width = 0.4,
                    },
                })
            end,
            mode = { "n", "t" },
            desc = "Terminal Right",
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
