return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        scope = {
            enabled = true,
            animate = {
                easing = "outExp",
            },
            treesitter = {
                blocks = {
                    "table_constructor",
                    "function_declaration",
                    "function_definition",
                    "method_declaration",
                    "method_definition",
                    "class_declaration",
                    "class_definition",
                    "do_statement",
                    "while_statement",
                    "repeat_statement",
                    "if_statement",
                    "for_statement",
                },
            },
        },
    },
}
