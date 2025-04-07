return {
    "mikavilpas/yazi.nvim",
    event = { "VeryLazy" },
    version = "6.11.0",
    dependencies = {
        "folke/snacks.nvim",
    },
    keys = {
        {
            "<leader>e",
            function()
                require("yazi").yazi()
            end,
            mode = { "n", "v" },
            desc = "yazi",
        },
    },
    opts = {
        open_for_directories = true,
        open_multiple_tabs = true,
        floating_window_scaling_factor = 0.8,
        keymaps = {
            open_file_in_vertical_split = "<c-v>",
            open_file_in_horizontal_split = "<c-h>",
            open_file_in_tab = "<c-t>",
        },
    },
}
