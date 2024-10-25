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
            { "<leader>U", group = "undo", icon = "󰕍" },
            { "<leader>b", group = "buffer", icon = "" },
            { "<leader>c", group = "code", icon = "" },
            { "<leader>e", group = "yazi", icon = { icon = "󰇥", color = "yellow" } },
            { "<leader>f", group = "find/file", icon = "" },
            { "<leader>g", group = "lazygit", icon = { icon = "", color = "red" } },
            { "<leader>l", group = "lsp", icon = "" },
            { "<leader>o", group = "options/toggle", icon = "" },
            { "<leader>q", group = "sessions", icon = { icon = "", color = "white" } },
            { "<leader>r", group = "reload", icon = "󰑓" },
            { "<leader>s", group = "split", icon = "" },
            { "<leader>u", group = "ui" },
            { "<leader>v", group = "vimtex" },
            { "<leader>x", group = "diagnostics", icon = { icon = "", color = "yellow" } },
            { "<leader>?", group = "which-key", icon = "" },
            { "<leader>\\", group = "toggleterm", icon = { icon = "", color = "green" } },
            { "<localleader>l", group = "vimtex", icon = { icon = "", color = "green" } },
        })
    end,
}
