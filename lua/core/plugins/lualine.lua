return {
    "nvim-lualine/lualine.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = {
        options = {
            icons_enabled = true,
            globalstatus = true,
            disabled_filetypes = {
                statusline = {
                    "snacks_dashboard",
                    "snacks_terminal",
                    "dashboard",
                    "yazi",
                    "mason",
                },
            },
            component_separators = "",
            section_separators = {
                left = "",
                right = "",
            },
        },
        sections = {
            lualine_a = {
                {
                    "mode",
                    separator = {
                        right = "",
                        left = "",
                    },
                },
            },
            lualine_b = {
                {
                    "diff",
                    symbols = {
                        added = " ",
                        modified = " ",
                        removed = " ",
                    },
                    separator = {
                        left = "",
                        right = "",
                    },
                    on_click = function()
                        Snacks.lazygit.open()
                    end,
                },
                {
                    "diagnostics",
                    symbols = {
                        error = " ",
                        warn = " ",
                        hint = " ",
                        info = " ",
                    },
                    separator = {
                        left = "",
                        right = "",
                    },
                    on_click = function()
                        vim.cmd("LspInfo")
                    end,
                },
            },
            lualine_c = {
                {
                    "filename",
                    file_status = true,
                    newfile_status = true,
                    path = 3,
                    shorting_target = 40,
                    symbols = {
                        modified = "●",
                        readonly = "",
                        unnamed = "[No Name]",
                        newfile = "[New]",
                    },
                },
            },
            lualine_x = {
                {
                    function()
                        local starts = vim.fn.line("v")
                        local ends = vim.fn.line(".")
                        local count = starts <= ends and ends - starts + 1 or starts - ends + 1
                        local wc = vim.fn.wordcount()
                        return count .. ":" .. wc["visual_chars"]
                    end,
                    cond = function()
                        return vim.fn.mode():find("[Vv]") ~= nil
                    end,
                },
                {
                    "searchcount",
                },
            },

            lualine_y = {
                {
                    "filetype",
                    separator = {
                        left = "",
                        right = "",
                    },
                },
            },
            lualine_z = {
                {
                    "location",
                    padding = {
                        left = 0,
                        right = 0,
                    },
                    separator = {
                        left = "",
                        right = "",
                    },
                },
            },
        },
    },
}
