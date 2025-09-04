return {
    "nvim-mini/mini.diff",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "mini.diff",
    opts = {
        view = {
            style = "sign",
            signs = {
                add = "┃",
                change = "┃",
                delete = "┃",
            },
        },
    },
}
