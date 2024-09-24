return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        -- vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_view_method = "sioyek"
        vim.cmd([[autocmd BufNewFile,BufRead *.md so $VIMRUNTIME/syntax/tex.vim]])
    end,
    keys = {
        {
            "<leader>vc",
            mode = "n",
            ft = { "tex" },
            "<cmd>VimtexCompile<cr>",
            desc = "Vimtex Compile",
        },
        {
            "<leader>vv",
            mode = "n",
            ft = { "tex" },
            "<cmd>VimtexView<cr>",
            desc = "Vimtex Forward Search",
        },
    },
}
