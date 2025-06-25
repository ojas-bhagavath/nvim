return {
    dir = "/home/ojas/Stuff/Projects/Lua/hledger.nvim",
    lazy = false,
    cmd = { "HledgerIAdd" },
    config = function()
        require("hledger")
    end,
}
