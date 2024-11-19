return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        bufdelete = { enabled = true },
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
                            vim.ui.input({ prompt = "Enter Filename" }, function(str)
                                if str ~= "" then
                                    vim.cmd("ene | w " .. str .. " | startinsert")
                                else
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
                        icon = " ",
                        desc = "Open LaTeX Folder",
                        key = "t",
                        action = function()
                            require("yazi").yazi(nil, vim.fn.expand("$HOME/Stuff/LaTeX/"))
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
                { section = "header" },
                { section = "keys", gap = 1, padding = 1 },
                { section = "startup" },
            },
        },
        lazygit = {
            enabled = true,
            win = {
                relative = "editor",
                position = "float",
                width = 0.8,
                height = 0.8,
                border = "rounded",
            },
        },
        toggle = {
            enabled = true,
            notify = true,
            color = {
                enabled = "green",
                disabled = "red",
            },
        },
        notifier = {
            enabled = true,
            timeout = 3000,
        },
        terminal = {
            win = {
                relative = "editor",
                position = "float",
                width = 0.8,
                height = 0.8,
                border = "rounded",
            },
        },
    },
    keys = {
        -- bufdelete
        {
            "<leader>bd",
            function()
                Snacks.bufdelete.delete()
            end,
            mode = { "n" },
            desc = "Delete Buffer",
        },
        {
            "<leader>bo",
            function()
                Snacks.bufdelete.other()
            end,
            mode = { "n" },
            desc = "Delete Other Buffers",
        },
        -- gitbrowse
        {
            "<leader>go",
            function()
                Snacks.gitbrowse.open()
            end,
            mode = { "n" },
            desc = "Open Remote File",
        },
        -- lazygit
        {
            "<leader>gg",
            function()
                Snacks.lazygit.open()
            end,
            mode = { "n" },
            desc = "Lazygit",
        },
        -- terminal
        {
            "<leader>\\",
            function()
                Snacks.terminal.toggle(nil, { cwd = vim.fn.getcwd() })
            end,
            mode = { "n", "t" },
            desc = "Toggle Terminal",
        },
        -- notify
        {
            "<leader>un",
            function()
                Snacks.notifier.hide()
            end,
            mode = { "n" },
            desc = "Dismiss All Notifications",
        },
    },
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                Snacks.toggle.diagnostics({ name = "Diagnostics" }):map("<leader>ox")
                Snacks.toggle.inlay_hints({ name = "Inlay Hints" }):map("<leader>oh")
                Snacks.toggle.line_number({ name = "Number" }):map("<leader>on")
                Snacks.toggle.treesitter({ name = "Treesitter" }):map("<leader>ot")
                Snacks.toggle.option("background", { off = "light", on = "dark", name = "Background Color" }):map("<leader>oc")
                Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>oN")
                Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>os")
                Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>ow")
            end,
        })
    end,
}
