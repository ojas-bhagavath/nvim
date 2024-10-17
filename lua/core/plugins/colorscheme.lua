return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "moon",
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
        config = function()
            if vim.o.background == "dark" then
                vim.cmd([[colorscheme tokyonight-moon]])
            end
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            if vim.o.background == "light" then
                vim.cmd([[colorscheme gruvbox]])
            end
            vim.keymap.set("n", "<leader>oc", function()
                if vim.o.background == "dark" then
                    vim.o.background = "light"
                    vim.cmd("colorscheme gruvbox")
                else
                    vim.o.background = "dark"
                    vim.cmd("colorscheme tokyonight-moon")
                end
            end, { desc = "Toggle Colorscheme" })
        end,
    },
}
