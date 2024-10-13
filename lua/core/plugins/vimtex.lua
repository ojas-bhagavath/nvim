return {
    "lervag/vimtex",
    event = { "VeryLazy" },
    config = function()
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_view_method = "sioyek"
        vim.cmd([[autocmd BufNewFile,BufRead *.md so $VIMRUNTIME/syntax/tex.vim]])
    end,
}
