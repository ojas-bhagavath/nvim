return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_syntax_conceal_disable = true
        vim.g.vimtex_view_forward_search_on_start = false
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_view_method = "sioyek"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "/home/ojas/Stuff/LaTeX/.texfiles/",
            options = {
                "-synctex=0",
            },
        }
    end,
}
