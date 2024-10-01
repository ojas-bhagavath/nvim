return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
        require("nvim-autopairs").setup()
        local npairs = require("nvim-autopairs")
        local rule = require("nvim-autopairs.rule")
        local cond = require("nvim-autopairs.conds")
        npairs.add_rules({
            rule("$", "$", { "tex", "latex", "markdown" }):with_pair(cond.not_after_regex("%w")),
        })
    end,
}
