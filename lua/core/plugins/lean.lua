return {
    "Julian/lean.nvim",
    event = { "BufReadPre *.lean", "BufNewFile *.lean" },
    dependencies = {},
    opts = {
        mappings = true,
    },
}
