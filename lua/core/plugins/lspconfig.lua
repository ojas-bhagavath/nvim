return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    build = ":MasonUpdate",
    dependencies = {
        { "williamboman/mason-lspconfig.nvim" },
    },
    config = function()
        vim.diagnostic.config({
            virtual_text = false,
            float = {
                source = true,
            },
        })
        vim.api.nvim_create_autocmd("LspProgress", {
            ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
            callback = function(ev)
                local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
                vim.notify(vim.lsp.status(), "info", {
                    id = "lsp_progress",
                    title = "LSP Progress",
                    opts = function(notif)
                        notif.icon = ev.data.params.value.kind == "end" and " " or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
                    end,
                })
            end,
        })
        local on_attach = function(client, bufnr)
            -- This is where a variable was first declared, or where a function is defined, etc.
            vim.keymap.set(
                "n",
                "<leader>ld",
                require("telescope.builtin").lsp_definitions,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Definitions" }
            )

            -- Find references for the word under your cursor.
            vim.keymap.set(
                "n",
                "<leader>lR",
                require("telescope.builtin").lsp_references,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP References" }
            )

            -- Jump to the implementation of the word under your cursor.
            --  Useful when your language has ways of declaring types without an actual implementation.
            vim.keymap.set(
                "n",
                "<leader>li",
                require("telescope.builtin").lsp_implementations,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Implementations" }
            )

            -- Jump to the type of the word under your cursor.
            --  Useful when you're not sure what type a variable is and you want to see
            --  the definition of its *type*, not where it was *defined*.
            vim.keymap.set(
                "n",
                "<leader>lt",
                require("telescope.builtin").lsp_type_definitions,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Type Definition" }
            )

            -- Fuzzy find all the symbols in your current document.
            --  Symbols are things like variables, functions, types, etc.
            vim.keymap.set(
                "n",
                "<leader>ls",
                require("telescope.builtin").lsp_document_symbols,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Document Symbols" }
            )

            -- Fuzzy find all the symbols in your current workspace.
            --  Similar to document symbols, except searches over your entire project.
            vim.keymap.set(
                "n",
                "<leader>lS",
                require("telescope.builtin").lsp_dynamic_workspace_symbols,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Workspace Symbols" }
            )

            -- WARN: This is not Goto Definition, this is Goto Declaration.
            --  For example, in C this would take you to the header.
            vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Declarations" })

            -- Execute a code action, usually your cursor needs to be on top of an error
            -- or a suggestion from your LSP for this to activate.
            vim.keymap.set(
                { "n", "x" },
                "<leader>ca",
                vim.lsp.buf.code_action,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show LSP Code Actions" }
            )

            -- Rename the variable under your cursor.
            --  Most Language Servers support renaming across files, etc.
            vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true, buffer = bufnr, desc = "LSP Rename" })

            -- Display all the diagnostics in the current line in a small neat window.
            vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr, desc = "Show Line Diagnostics" })

            -- Fuzzy find all the diagnostics in the current buffer.
            vim.keymap.set(
                "n",
                "<leader>db",
                "<cmd>Telescope diagnostics bufnr=0<CR>",
                { noremap = true, silent = true, buffer = bufnr, desc = "Show Buffer Diagnostics" }
            )

            -- Fuzzy find all the diagnostics in the current workspace.
            vim.keymap.set(
                "n",
                "<leader>dw",
                require("telescope.builtin").diagnostics,
                { noremap = true, silent = true, buffer = bufnr, desc = "Show Workspace Diagnostics" }
            )

            -- Display the documentation of the object you  are hovering on. Pressing K in the normal mode does the same thing as well.
            -- Just move to get rid of it, press K to enter inside the documentation window and explore there.
            vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, { noremap = true, silent = true, buffer = bufnr, desc = "Hovered Object Documentation" })

            -- Restart LSP.
            vim.keymap.set(
                "n",
                "<leader>rl",
                "<cmd>LspRestart<CR> | <cmd>lua Snacks.notify.info({'LSP Restarted!'},{title = 'LspConfig'})<CR>",
                { noremap = true, silent = true, buffer = bufnr, desc = "Restart LSP" }
            )
        end

        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = " ",
                    [vim.diagnostic.severity.WARN] = " ",
                    [vim.diagnostic.severity.HINT] = " ",
                    [vim.diagnostic.severity.INFO] = " ",
                },
            },
        })

        local capabilities = vim.lsp.protocol.make_client_capabilities()

        local servers = {
            bash_ls = {},
            cssls = {},
            html = {},
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Replace",
                        },
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
            ensure_installed = {},
            automatic_installation = true,
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
