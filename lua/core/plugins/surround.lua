return {
    "kylechui/nvim-surround",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require("nvim-surround").setup({})
    end,
}
