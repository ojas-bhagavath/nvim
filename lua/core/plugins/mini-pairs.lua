return {
    "echasnovski/mini.pairs",
    event = { "InsertEnter" },
    main = "mini.pairs",
    opts = {},
    init = function()
        -- Create symmetrical `$$` pair only in Tex files
        local map_tex = function()
            MiniPairs.map_buf(0, "i", "$", { action = "closeopen", pair = "$$" })
        end
        vim.api.nvim_create_autocmd("FileType", { pattern = { "tex", "markdown" }, callback = map_tex })
    end,
}
