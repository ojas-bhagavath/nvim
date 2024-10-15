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
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
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
        { "<leader><leader>", "<cmd>lua require('telescope.builtin').buffers()<CR>", desc = "fuzzy find buffers" },
    },
}
