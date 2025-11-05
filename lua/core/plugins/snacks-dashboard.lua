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
 ┻ ┻┛┗┛━┻┛  ━┻┛┗━┛  ┻ ┻   ┗┻┛┗━┛┻━┛┻━┛
 ]],
                keys = {
                    {
                        icon = " ",
                        desc = "New File",
                        key = "n",
                        action = function()
                            vim.ui.input({
                                prompt = "Enter Filename",
                                icon = " ",
                                icon_hl = "SnacksInputIcon",
                                expand = true,
                            }, function(str)
                                if str ~= nil then
                                    if str ~= "" then
                                        vim.cmd("ene | w " .. str .. " | startinsert")
                                    elseif str == "" then
                                        vim.cmd("ene | startinsert")
                                    end
                                end
                            end)
                        end,
                    },
                    {
                        icon = " ",
                        desc = "Find Files",
                        key = "f",
                        action = function()
                            Snacks.picker.files()
                        end,
                    },
                    {
                        icon = "󱋢 ",
                        desc = "Recent Files",
                        key = "r",
                        action = function()
                            Snacks.picker.recent()
                        end,
                    },
                    {
                        icon = " ",
                        desc = "Restore Last Session",
                        key = "s",
                        action = function()
                            require("persistence").load({ last = true })
                        end,
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
                        key = "D",
                        hidden = true,
                        action = function()
                            Snacks.picker.files({ cwd = vim.fn.expand("$HOME/.dotfiles/") })
                        end,
                    },
                    {
                        key = "o",
                        hidden = true,
                        action = function()
                            require("yazi").yazi(nil, vim.fn.expand("$HOME/Stuff/Websites/ojasb.xyz/"))
                        end,
                    },
                    {
                        icon = "󰩪 ",
                        desc = "Open Notes",
                        key = "v",
                        action = function()
                            require("yazi").yazi(nil, vim.fn.expand("$HOME/Stuff/Notes/"))
                        end,
                    },
                    {
                        key = "V",
                        hidden = true,
                        action = function()
                            Snacks.picker.files({ cwd = "$HOME/Stuff/Notes/" })
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
                        key = "C",
                        hidden = true,
                        action = function()
                            Snacks.picker.files({ cwd = "$HOME/.config/nvim/" })
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
                    {
                        key = "P",
                        hidden = true,
                        action = function()
                            Snacks.picker.projects()
                        end,
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
