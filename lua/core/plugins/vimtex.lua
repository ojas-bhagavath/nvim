return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_syntax_conceal_disable = true
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_view_method = "sioyek"
    end,
}
