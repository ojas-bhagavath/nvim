return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        dependencies = {
            "windwp/nvim-ts-autotag",
            opts = {},
        },
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "bash",
                "css",
                "gitignore",
                "html",
                "javascript",
                "json5",
                "latex",
                "ledger",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "scss",
                "toml",
                "vim",
                "vimdoc",
                "toml",
                "yaml",
            },
            autoinstall = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-Space>",
                    node_incremental = "<C-Space>",
                    scope_incremental = false,
                    node_decremental = "<C-S-Space>",
                },
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.install").prefer_git = true
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
