return {
    "epwalsh/obsidian.nvim",
    ft = { "markdown" },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    main = "obsidian",
    opts = {
        ui = {
            enable = false,
        },
        workspaces = {
            {
                name = "Academic",
                path = "~/Stuff/Vaults/academic/",
            },
            {
                name = "Personal",
                path = "~/Stuff/Vaults/personal/",
            },
        },
        mappings = {
            ["<localleader>o"] = {
                action = function()
                    return require("obsidian").util.smart_action()
                end,
                opts = { expr = true, buffer = true },
            },
            ["<CR>"] = {
                action = function()
                    return require("obsidian").util.smart_action()
                end,
                opts = { expr = true, buffer = true },
            },
            ["<localleader>x"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
        },
        follow_url_func = function(url)
            vim.fn.jobstart({ "xdg-open", url })
        end,
        follow_img_func = function(img)
            vim.fn.jobstart({ "nsxiv", img })
        end,
        templates = {
            folder = "templates",
            date_format = "%Y%m%d",
            time_format = "%H:%M",
        },
        attachments = {
            img_folder = "attachments/",
            img_name_func = function()
                return string.format("%s-", os.time())
            end,
            img_text_func = function(client, path)
                path = client:vault_relative_path(path) or path
                return string.format("![%s](%s)", path.name, path)
            end,
        },
    },
}
