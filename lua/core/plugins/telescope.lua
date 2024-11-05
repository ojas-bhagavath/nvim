return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
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
                },
                buffers = {
                    initial_mode = "normal",
                    sort_lastused = true,
                    sort_mru = true,
                },
            },
        }
    end,
    keys = {
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", desc = "fuzzy find files in cwd" },
        { "<leader>fr", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", desc = "fuzzy find recent files" },
        { "<leader>fs", "<cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "fuzzy find string in cwd" },
        { "<leader>fc", "<cmd>lua require('telescope.builtin').grep_string()<CR>", desc = "fuzzy find string under the cursor" },
        { "<leader><leader>", "<cmd>lua require('telescope.builtin').buffers()<CR>", desc = "fuzzy find buffers" },
    },
}
