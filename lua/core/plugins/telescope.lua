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
                    height = 0.8,
                    preview_width = 0.6,
                    prompt_position = "top",
                    width = 0.8,
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
            desc = "fuzzy find files in cwd",
        },
        {
            "<leader>fr",
            function()
                require("telescope.builtin").oldfiles()
            end,
            mode = { "n" },
            desc = "fuzzy find recent files",
        },
        {
            "<leader>fs",
            function()
                require("telescope.builtin").live_grep()
            end,
            mode = { "n" },
            desc = "fuzzy find string in cwd",
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").grep_string()
            end,
            mode = { "n", "v" },
            desc = "fuzzy find string under the cursor",
        },
        {
            "<leader>fc",
            function()
                require("telescope.builtin").command_history()
            end,
            mode = { "n" },
            desc = "fuzzy find string command history",
        },
        {
            "<leader><leader>",
            function()
                require("telescope.builtin").buffers()
            end,
            mode = { "n" },
            desc = "fuzzy find buffers",
        },
    },
}
