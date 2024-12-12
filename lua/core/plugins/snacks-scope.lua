return {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        scope = {
            enabled = true,
            animate = {
                easing = "inExpo",
            },
            treesitter = {
                blocks = {
                    "class_declaration",
                    "class_definition",
                    "do_statement",
                    "for_statement",
                    "function_declaration",
                    "function_definition",
                    "if_statement",
                    "method_declaration",
                    "method_definition",
                    "repeat_statement",
                    "table_constructor",
                    "while_statement",
                },
            },
        },
    },
}
