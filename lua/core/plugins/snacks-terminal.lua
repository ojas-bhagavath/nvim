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
            "<leader>xx",
            function()
                Snacks.terminal.toggle("python3 " .. vim.fn.expand("%"), { cwd = vim.fn.getcwd() })
            end,
            mode = { "n", "t" },
            ft = "python",
        },
    },
}
