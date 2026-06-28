return {
    "salkin-mada/openscad.nvim",
    ft = "openscad",
    config = function()
        vim.g.openscad_load_snippets = true
        require("openscad")
    end,
}
