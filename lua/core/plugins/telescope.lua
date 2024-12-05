return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    main = "telescope",
    opts = function()
        local multiopen = function(prompt_bufnr)
            local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
            local multi = picker:get_multi_selection()
            if not vim.tbl_isempty(multi) then
                require("telescope.actions").close(prompt_bufnr)
                for _, j in pairs(multi) do
                    if j.path ~= nil then
                        vim.cmd(string.format("%s %s", "edit", j.path))
                    end
                end
            else
                require("telescope.actions").select_default(prompt_bufnr)
            end
        end
        return {
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                    horizontal = {
                        height = 0.8,
                        preview_width = 0.6,
                        prompt_position = "top",
                        width = 0.8,
                    },
                },
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<CR>"] = multiopen,
                        ["<esc>"] = require("telescope.actions").close,
                    },
                    n = {
                        ["<CR>"] = multiopen,
                        ["d"] = require("telescope.actions").delete_buffer,
                        ["q"] = require("telescope.actions").close,
                    },
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    file_ignore_patterns = {
                        ".git/",
                        ".stfolder/",
                        ".stversions/",
                    },
                },
                buffers = {
                    initial_mode = "normal",
                    sort_lastused = true,
                    sort_mru = true,
                },
                command_history = {
                    initial_mode = "normal",
                    sort_lastused = true,
                    sort_mru = true,
                },
                search_history = {
                    initial_mode = "normal",
                    sort_lastused = true,
                    sort_mru = true,
                },
            },
        }
    end,
    keys = {
        {
            "<leader>ff",
            function()
                require("telescope.builtin").find_files()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Files In Cwd",
        },
        {
            "<leader>fr",
            function()
                require("telescope.builtin").oldfiles()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Recent Files",
        },
        {
            "<leader>fs",
            function()
                require("telescope.builtin").live_grep()
            end,
            mode = { "n" },
            desc = "Fuzzy Find String In Cwd",
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").grep_string()
            end,
            mode = { "n", "v" },
            desc = "Fuzzy Find String Under The Cursor",
        },
        {
            "<leader>fc",
            function()
                require("telescope.builtin").command_history()
            end,
            mode = { "n" },
            desc = "Fuzzy Find String Command History",
        },
        {
            "<leader>fk",
            function()
                require("telescope.builtin").keymaps()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Keymaps",
        },
        {
            "<leader><leader>",
            function()
                require("telescope.builtin").buffers()
            end,
            mode = { "n" },
            desc = "Fuzzy Find Buffers",
        },
    },
}
