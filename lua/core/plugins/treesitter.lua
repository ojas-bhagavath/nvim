return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
        {
            "windwp/nvim-ts-autotag",
            opts = {},
        },
    },
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ignore_install = { "latex" },
        highlight = {
            enable = true,
            disable = { "latex" },
        },
        indent = {
            enable = true,
            disable = { "latex" },
        },
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
    config = function()
        require("nvim-treesitter.install").prefer_git = true
        require("nvim-treesitter").install({
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
            "vim",
            "vimdoc",
            "yaml",
        })
    end,
}
