return {
    "nvim-lualine/lualine.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = function()
        local function getbufcount()
            local num_bufs = 0
            for i = 1, vim.api.nvim_buf_count() do
                if vim.api.nvim_buf_is_loaded(i) then
                    num_bufs = num_bufs + 1
                end
            end
        end
        return {
            options = {
                icons_enabled = true,
                globalstatus = true,
                disabled_filetypes = {
                    statusline = {
                        "snacks_dashboard",
                        "snacks_terminal",
                        "dashboard",
                        "alpha",
                        "starter",
                        "yazi",
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
                        fmt = function(str)
                            return str:sub(1, 3)
                        end,
                        separator = { right = "", left = "" },
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
                        separator = { left = "", right = "" },
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
                        separator = { left = "", right = "" },
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
                lualine_x = {},

                lualine_y = {
                    {
                        "filetype",
                        separator = {
                            left = "",
                            right = "",
                        },
                    },
                    {
                        "searchcount",
                    },
                },
                lualine_z = {
                    {
                        "progress",
                        padding = {
                            left = 0,
                            right = 0,
                        },
                        separator = {
                            left = "",
                        },
                    },
                    {
                        "location",
                        padding = {
                            left = 0,
                            right = 0,
                        },
                        separator = {
                            right = "",
                        },
                    },
                },
            },
        }
    end,
}
