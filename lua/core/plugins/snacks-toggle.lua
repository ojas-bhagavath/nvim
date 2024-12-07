return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        toggle = {
            enabled = true,
            notify = true,
            color = {
                enabled = "green",
                disabled = "red",
            },
        },
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                Snacks.toggle.diagnostics({ name = "Diagnostics" }):map("<leader>od")
                Snacks.toggle.inlay_hints({ name = "Inlay Hints" }):map("<leader>oh")
                Snacks.toggle.line_number({ name = "Number" }):map("<leader>on")
                Snacks.toggle.treesitter({ name = "Treesitter" }):map("<leader>ot")
                Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>oN")
                Snacks.toggle.option("background", { on = "dark", off = "light", name = "Dark Mode" }):map("<leader>oc")
                Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>os")
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>ow")
            end,
        })
    end,
}
