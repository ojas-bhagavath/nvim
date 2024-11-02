return {
    "epwalsh/obsidian.nvim",
    ft = { "markdown" },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    main = "obsidian",
    opts = {
        workspaces = {
            {
                name = "Academics",
                path = "~/Stuff/Vaults/academics/",
            },
            {
                name = "Other",
                path = "~/Stuff/Vaults/personal/",
            },
        },
    },
}
