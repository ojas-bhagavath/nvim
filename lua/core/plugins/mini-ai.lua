return {
    "nvim-mini/mini.ai",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "mini.ai",
    opts = {
        search_method = "cover_or_next",
    },
}
