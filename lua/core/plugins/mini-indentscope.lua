return {
    "echasnovski/mini.indentscope",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "mini.indentscope",
    opts = {
        symbol = "│",
        options = { try_as_border = true },
    },
    init = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "dashboard",
                "help",
                "lazy",
                "mason",
                "notify",
                "snacks_notif",
                "snacks_terminal",
                "snacks_win",
                "trouble",
                "Trouble",
            },
            callback = function()
                vim.b.miniindentscope_disable = true
            end,
        })
    end,
}
