return {
    "nvim-mini/mini.icons",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "mini.icons",
    opts = {
        style = "glyph",
    },
    init = function()
        package.preload["nvim-web-devicons"] = function()
            require("mini.icons").mock_nvim_web_devicons()
            return package.loaded["nvim-web-devicons"]
        end
    end,
}
