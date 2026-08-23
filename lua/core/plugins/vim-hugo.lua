return {
    "phelipetls/vim-hugo",
    ft = {
        "html",
        "htmlhugo",
        "markdown",
    },
    config = function()
        vim.treesitter.language.register("html", "htmlhugo")
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "htmlhugo",
            callback = function(args)
                vim.schedule(function()
                    if vim.api.nvim_buf_is_valid(args.buf) then
                        vim.bo[args.buf].syntax = "on"
                    end
                end)
            end,
        })
    end,
}
