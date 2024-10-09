return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = { "markdown" },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "Academics",
                path = "~/Stuff/Vaults/Lyceum/",
            },
            {
                name = "Other",
                path = "~/Stuff/Vaults/StoaPoikile/",
            },
        },
    },
}
