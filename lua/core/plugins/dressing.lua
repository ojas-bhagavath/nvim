return {
    "stevearc/dressing.nvim",
    init = function()
        vim.ui.select = function(...)
            require("lazy").load({ plugins = { "dressing.nvim" } })
            return vim.ui.select(...)
        end
    end,
    main = "dressing",
    opts = {
        input = {
            enabled = false,
        },
    },
}
