return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = { "echasnovski/mini.indentscope" },
    opts = function()
        Snacks.toggle({
            name = "Indentation Guides",
            get = function()
                return require("ibl.config").get_config(0).enabled
            end,
            set = function(state)
                require("ibl").setup_buffer(0, { enabled = state })
            end,
        }):map("<leader>og")
        return {
            indent = {
                char = "│",
                tab_char = "│",
            },
            scope = { enabled = false },
            exclude = {
                filetypes = {
                    "Trouble",
                    "dashboard",
                    "help",
                    "lazy",
                    "mason",
                    "notify",
                    "snacks_notif",
                    "snacks_terminal",
                    "snacks_win",
                    "toggleterm",
                    "trouble",
                },
            },
        }
    end,
    main = "ibl",
}
