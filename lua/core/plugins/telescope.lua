return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    cmd = "Telescope",
    main = "telescope",
    opts = {
        defaults = {
            path_display = { "smart" },
        },
        pickers = {
            find_files = {
                hidden = true,
            },
            oldfiles = {
                hidden = true,
            },
            live_grep = {
                hidden = true,
            },
            grep_string = {
                hidden = true,
            },
        },
    },
    config = function()
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
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<CR>"] = multiopen,
                    },
                    n = {
                        ["d"] = require("telescope.actions").delete_buffer,
                        ["q"] = require("telescope.actions").close,
                        ["<CR>"] = multiopen,
                    },
                },
            },
        })
    end,
    keys = {
        { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", desc = "fuzzy find files in cwd" },
        { "<leader>fr", "<cmd>lua require('telescope.builtin').oldfiles()<CR>", desc = "fuzzy find recent files" },
        { "<leader>fs", "<cmd>lua require('telescope.builtin').live_grep()<CR>", desc = "fuzzy find string in cwd" },
        { "<leader>fc", "<cmd>lua require('telescope.builtin').grep_string()<CR>", desc = "fuzzy find string under the cursor" },
        {
            "<leader><leader>",
            "<cmd>lua require('telescope.builtin').buffers({sort_mru=true,sort_lastused=true,initial_mode='normal'})<CR>",
            desc = "fuzzy find buffers",
        },
    },
}
