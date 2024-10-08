return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = { "echasnovski/mini.indentscope" },
    opts = {
        indent = {
            char = "│",
            tab_char = "│",
        },
        scope = { enabled = false },
        exclude = {
            filetypes = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "lazyterm",
            },
        },
    },
    main = "ibl",
}
