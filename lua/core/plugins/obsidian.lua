return {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    -- filetype = { "markdown" },
    event = {
        "BufReadPre " .. vim.fn.expand("~") .. "/Stuff/Notes/*.md",
        "BufNewFile " .. vim.fn.expand("~") .. "/Stuff/Notes/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "notes",
                path = "~/Stuff/Notes/",
            },
        },
        notes_subdir = "inbox",
        daily_notes = {
            folder = "daily",
            date_format = "%Y%m%d",
            template = "extras/templates/daily.md",
        },
        completion = {
            blink = true,
            min_chars = 2,
            create_new = true,
        },
        new_notes_location = "notes_subdir",
        preferred_link_style = "wiki",
        disable_frontmatter = false,
        templates = {
            folder = "extras/templates",
            date_format = "%Y%m%d-%H%M",
            time_format = "%H%M",
            substitutions = {},
        },
        picker = {
            name = "snacks.pick",
            note_mappings = {
                new = "<C-x>",
                insert_link = "<C-l>",
            },
            tag_mappings = {
                tag_note = "<C-x>",
                insert_tag = "<C-l>",
            },
        },
        sort_by = "modified",
        sort_reversed = true,
        search_max_lines = 1000,
        open_notes_in = "current",
        attachments = {
            img_folder = "extras/attachments",
            img_name_func = function()
                return string.format("Pasted image %s", os.date("%Y%m%d%H%M%S"))
            end,
            confirm_img_paste = true,
        },
    },
}
