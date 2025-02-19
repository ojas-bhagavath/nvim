return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = { "n", "v" },
            desc = "Code Format",
        },
        {
            "<leader>ci",
            "<cmd>ConformInfo<CR>",
            mode = { "n" },
            desc = "Conform Info",
        },
    },
    main = "conform",
    opts = {
        formatters = {
            ["black"] = {
                inherit = true,
                prepend_args = { "--fast" },
            },
            ["tex-fmt"] = {
                inherit = true,
                prepend_args = {
                    "--nowrap",
                    "--tabsize=4",
                },
            },
            ["prettier"] = {
                inherit = true,
                prepend_args = { "--tab-width=4" },
            },
        },
        formatters_by_ft = {
            bash = { "shfmt" },
            css = { "prettier" },
            html = { "prettier" },
            htmlhugo = { "prettier" },
            javascript = { "prettier" },
            json = { "prettier" },
            lua = { "stylua" },
            python = { "isort", "black" },
            scss = { "prettier" },
            shell = { "shfmt" },
            tex = { "tex-fmt" },
            toml = { "taplo" },
            yaml = { "prettier" },
        },
        format_on_save = function(bufnr)
            local disable_filetypes = { c = true, cpp = true, markdown = true }
            return {
                timeout_ms = 5000,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        notify_on_error = true,
    },
}
