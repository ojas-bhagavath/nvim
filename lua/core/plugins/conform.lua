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
    },
    main = "conform",
    opts = {
        formatters_by_ft = {
            bash = { "shfmt" },
            html = { "prettier" },
            css = { "prettier" },
            javascript = { "prettier" },
            lua = { "stylua" },
            markdown = { "prettier" },
            python = { "isort", "black" },
            shell = { "shfmt" },
            toml = { "taplo" },
        },
        format_on_save = function(bufnr)
            local disable_filetypes = { c = true, cpp = true }
            return {
                timeout_ms = 500,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
            }
        end,
        notify_on_error = true,
    },
}
