return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        dashboard = {
            enabled = true,
            preset = {
                header = [[
┏┳┓┏━┓  ┏━┓┏┓┏┏━┓  ┏┳┓┳ ┳┳┏┓┏┏━┓
 ┃┃┃ ┃  ┃ ┃┃┃┃┣┫    ┃ ┣━┫┃┃┃┃┃ ┳
━┻┛┗━┛  ┗━┛┛┗┛┗━┛   ┻ ┻ ┻┻┛┗┛┗━┛
┏━┓┏┓┏┏┳┓  ┏┳┓┏━┓  ┳┏┳┓  ┳ ┳┏━┓┳  ┳
┣━┫┃┃┃ ┃┃   ┃┃┃ ┃  ┃ ┃   ┃┃┃┣┫ ┃  ┃
 ┻ ┻┛┗┛━┻┛  ━┻┛┗━┛  ┻ ┻   ┗┻┛┗━┛┻━┛┻━┛]],
                keys = {
                    {
                        icon = " ",
                        desc = "New File",
                        key = "n",
                        action = function()
                            vim.ui.input({ prompt = "Enter Filename" }, function(str)
                                if str ~= "" then
                                    vim.cmd("ene | w " .. str .. " | startinsert")
                                elseif str == "" then
                                    vim.cmd("ene | startinsert")
                                end
                            end)
                        end,
                    },
                    {
                        icon = " ",
                        desc = "Find Files",
                        key = "f",
                        action = function()
                            require("telescope.builtin").find_files()
                        end,
                    },
                    {
                        icon = "󱋢 ",
                        desc = "Recent Files",
                        key = "r",
                        action = function()
                            require("telescope.builtin").oldfiles()
                        end,
                    },
                    {
                        icon = " ",
                        desc = "Restore Last Session",
                        key = "s",
                        action = ":SessionManager load_last_session",
                    },
                    {
                        icon = " ",
                        desc = "Open Dotfiles",
                        key = "d",
                        action = function()
                            require("yazi").yazi(nil, vim.fn.expand("$HOME/.dotfiles/"))
                        end,
                    },
                    {
                        icon = "󰩪 ",
                        desc = "Open Vaults",
                        key = "v",
                        action = function()
                            require("telescope.builtin").find_files({ hidden = false, search_dirs = { vim.fn.expand("$HOME/Stuff/Vaults/") } })
                        end,
                    },
                    {
                        icon = " ",
                        desc = "Configure Neovim",
                        key = "c",
                        action = function()
                            require("yazi").yazi(nil, vim.fn.expand("$HOME/.config/nvim/"))
                        end,
                    },
                    {
                        icon = "󰒲 ",
                        desc = "Open Lazy",
                        key = "l",
                        action = ":Lazy",
                    },
                    {
                        icon = " ",
                        desc = "Quit Neovim",
                        key = "q",
                        action = ":qa",
                    },
                },
            },
            sections = {
                -- { section = "header" },
                {
                    section = "terminal",
                    cmd = "cmatrix -B -C magenta -u 10",
                    height = 9,
                    padding = 2,
                },
                {
                    section = "keys",
                    gap = 1,
                    padding = 2,
                },
                {
                    section = "startup",
                },
            },
        },
    },
    keys = {
        {
            "<leader>ud",
            function()
                Snacks.dashboard.open()
            end,
            mode = { "n" },
            desc = "Open Dashboard",
        },
    },
}
