return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {
            "williamboman/mason-lspconfig.nvim",
            opts = {
                automatic_installation = true,
            },
        },
    },
    config = function()
        local on_attach = function(client, bufnr)
            -- This is where a variable was first declared, or where a function is defined, etc.
            vim.keymap.set(
                "n",
                "<leader>ld",
                require("telescope.builtin").lsp_definitions,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP definitions" }
            )

            -- Find references for the word under your cursor.
            vim.keymap.set(
                "n",
                "<leader>lR",
                require("telescope.builtin").lsp_references,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP references" }
            )

            -- Jump to the implementation of the word under your cursor.
            --  Useful when your language has ways of declaring types without an actual implementation.
            vim.keymap.set(
                "n",
                "<leader>li",
                require("telescope.builtin").lsp_implementations,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP implementations" }
            )

            -- Jump to the type of the word under your cursor.
            --  Useful when you're not sure what type a variable is and you want to see
            --  the definition of its *type*, not where it was *defined*.
            vim.keymap.set(
                "n",
                "<leader>lt",
                require("telescope.builtin").lsp_type_definitions,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP type definition" }
            )

            -- Fuzzy find all the symbols in your current document.
            --  Symbols are things like variables, functions, types, etc.
            vim.keymap.set(
                "n",
                "<leader>ls",
                require("telescope.builtin").lsp_document_symbols,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP document symbols" }
            )

            -- Fuzzy find all the symbols in your current workspace.
            --  Similar to document symbols, except searches over your entire project.
            vim.keymap.set(
                "n",
                "<leader>lS",
                require("telescope.builtin").lsp_dynamic_workspace_symbols,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP workspace symbols" }
            )

            -- WARN: This is not Goto Definition, this is Goto Declaration.
            --  For example, in C this would take you to the header.
            vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP declarations" })

            -- Execute a code action, usually your cursor needs to be on top of an error
            -- or a suggestion from your LSP for this to activate.
            vim.keymap.set(
                { "n", "x" },
                "<leader>ca",
                vim.lsp.buf.code_action,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP code actions" }
            )

            -- Rename the variable under your cursor.
            --  Most Language Servers support renaming across files, etc.
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true, buffer = bufnr, desc = "LSP rename" })

            -- Display all the diagnostics in the current line in a small neat window.
            vim.keymap.set("n", "<leader>xx", vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr, desc = "Show line diagnostics" })

            -- Fuzzy find all the diagnostics in the current buffer.
            vim.keymap.set(
                "n",
                "<leader>xb",
                "<cmd>Telescope diagnostics bufnr=0<CR>",
                { noremap = true, silent = true, buffer = bufnr, desc = "Show buffer diagnostics" }
            )

            -- Fuzzy find all the diagnostics in the current workspace.
            vim.keymap.set(
                "n",
                "<leader>xw",
                require("telescope.builtin").diagnostics,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show workspace diagnostics" }
            )

            -- Display the documentation of the object you  are hovering on. Pressing K in the normal mode does the same thing as well.
            -- Just move to get rid of it, press K to enter inside the documentation window and explore there.
            vim.keymap.set(
                "n",
                "<leader>lh",
                vim.lsp.buf.hover,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show documentation of the hovered object" }
            )

            -- Restart LSP.
            vim.keymap.set(
                "n",
                "<leader>rl",
                "<cmd>LspRestart<CR> | <cmd>lua Snacks.notify.info({'LSP Restarted!'},{title = 'LspConfig'})<CR>",
                { noremap = true, silent = true, buffer = bufnr, desc = "Restart LSP" }
            )
        end

        local signs = {
            Error = " ",
            Warn = " ",
            Hint = " ",
            Info = " ",
        }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

        local servers = {
            bash_ls = {},
            cssls = {},
            html = {},
            lua_ls = {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            },
            marksman = {},
            pyright = {},
            taplo = {},
            texlab = {},
        }

        require("mason-lspconfig").setup({
            handlers = {
                function(server_name)
                    local server = servers[server_name] or {}
                    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                    server.on_attach = on_attach
                    require("lspconfig")[server_name].setup(server)
                end,
            },
        })
    end,
}
