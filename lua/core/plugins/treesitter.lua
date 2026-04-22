return {
    "romus204/tree-sitter-manager.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {},
    keys = {
        {
            "<leader>up",
            "<cmd>TSManager<cr>",
            desc = "tree-sitter-manager",
        },
    },
    config = function()
        require("tree-sitter-manager").setup({
            ensure_installed = {
                "bash",
                "beancount",
                "css",
                "gitignore",
                "html",
                "javascript",
                "json5",
                "ledger",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "scss",
                "toml",
                "typst",
                "vim",
                "vimdoc",
                "yaml",
            },
            auto_install = true,
            highlight = true,
        })
    end,
}
