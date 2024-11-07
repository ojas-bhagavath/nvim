return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                completion = { completeopt = "menu,menuone,preview,noselect" },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "luasnip" }, -- snippets
                    { name = "nvim_lsp" }, -- lsp
                    { name = "buffer" }, -- text within current buffer
                    { name = "path" }, -- file system paths
                }),
            })
            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline({
                    ["<C-j>"] = { c = cmp.mapping.select_next_item() },
                    ["<C-k>"] = { c = cmp.mapping.select_prev_item() },
                }),
                sources = {
                    { name = "buffer" },
                },
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline({
                    ["<C-j>"] = { c = cmp.mapping.select_next_item() },
                    ["<C-k>"] = { c = cmp.mapping.select_prev_item() },
                }),
                sources = cmp.config.sources({
                    { name = "path" },
                    { name = "cmdline" },
                }),
                matching = { disallow_symbol_nonprefix_matching = false },
            })
        end,
    },
    {
        "hrsh7th/cmp-cmdline",
        event = { "CmdlineEnter" },
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
    },
}
