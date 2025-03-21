return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        notifier = {
            enabled = true,
            timeout = 3000,
        },
    },
    keys = {
        {
            "<leader>un",
            function()
                Snacks.notifier.hide()
            end,
            mode = { "n" },
            desc = "Dismiss All Notifications",
        },
        {
            "<leader>uh",
            function()
                Snacks.notifier.show_history()
            end,
            mode = { "n" },
            desc = "Show Notification History",
        },
    },
}
