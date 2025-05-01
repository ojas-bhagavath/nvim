return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    config = function()
        require("which-key").add({
            { "<leader><tab>", group = "tab", icon = "󰓩" },
            { "<leader>?", group = "which-key", icon = "" },
            { "<leader>\\", icon = "" },
            { "<leader>b", group = "buffer", icon = "" },
            { "<leader>c", group = "code", icon = "" },
            { "<leader>d", group = "diagnostics", icon = "" },
            { "<leader>f", group = "file", icon = "" },
            { "<leader>g", group = "git", icon = "" },
            { "<leader>l", group = "lsp", icon = "" },
            { "<leader>o", group = "toggle", icon = "" },
            { "<leader>q", group = "sessions", icon = "" },
            { "<leader>r", group = "reload", icon = "󰑓" },
            { "<leader>s", group = "split", icon = "" },
            { "<leader>t", group = "terminal", icon = "" },
            { "<leader>u", group = "ui" },
            { "<leader>x", group = "execute", icon = "" },
            { "<localleader>l", group = "vimtex", icon = "" },
        })
    end,
}
