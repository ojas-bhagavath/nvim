return {
    "mason-org/mason.nvim",
    cmd = "Mason",
    keys = {
        {
            "<leader>cm",
            "<cmd>Mason<cr>",
            desc = "Mason",
        },
    },
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
        ui = {
            icons = {
                package_installed = "",
                package_pending = "",
                package_uninstalled = "",
            },
            border = "rounded",
            width = 0.8,
            height = 0.8,
        },
        ensure_installed = {
            "basedpyright",
            "bash-language-server",
            "black",
            "css-lsp",
            "html-lsp",
            "isort",
            "lean-language-server",
            "lua-language-server",
            "marksman",
            "prettier",
            "shellcheck",
            "shfmt",
            "stylua",
            "taplo",
            "tex-fmt",
            "texlab",
            "tinymist",
            "typescript-language-server",
            "typstyle",
        },
    },
    config = function(_, opts)
        require("mason").setup(opts)
        local mr = require("mason-registry")
        mr.refresh(function()
            for _, tool in ipairs(opts.ensure_installed) do
                local p = mr.get_package(tool)
                if not p:is_installed() then
                    p:install()
                end
            end
        end)
    end,
}
