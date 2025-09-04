return {
    "nvim-mini/mini.move",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "mini.move",
    opts = {
        mappings = {
            -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
            left = "<S-h>",
            right = "<S-l>",
            down = "<S-j>",
            up = "<S-k>",
            -- Move current line in Normal mode
            line_left = "<C-S-h>",
            line_right = "<C-S-l>",
            line_down = "<C-S-j>",
            line_up = "<C-S-k>",
        },
    },
}
