return {
    "echasnovski/mini.hipatterns",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require("mini.hipatterns").setup({
            highlighters = {
                hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
                fixme = { pattern = "FIXME", group = "MiniHipatternsFixme" },
                hack = { pattern = "HACK", group = "MiniHipatternsHack" },
                todo = { pattern = "TODO", group = "MiniHipatternsTodo" },
                note = { pattern = "NOTE", group = "MiniHipatternsNote" },
            },
        })
    end,
    keys = {
        {
            "<leader>oC",
            "<cmd>lua MiniHipatterns.toggle()<CR>",
            desc = "Toggle MiniHipatterns",
        },
    },
}
