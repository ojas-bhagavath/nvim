return {
    "b0o/incline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "echasnovski/mini.diff",
    },
    event = { "BufReadPost", "BufNewFile", "BufWritePost" },
    config = function()
        require("incline").setup({
            render = function(props)
                local function get_diagnostics()
                    local icons = {
                        error = " ",
                        warn = " ",
                        hint = " ",
                        info = " ",
                    }
                    local labels = {}
                    for severity, icon in pairs(icons) do
                        local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
                        if n > 0 then
                            table.insert(labels, { " " .. icon .. n, group = "DiagnosticSign" .. severity })
                        end
                    end
                    if #labels > 0 then
                        table.insert(labels, { " ┊" })
                    end
                    return labels
                end
                local function get_diff()
                    local icons = {
                        add = " ",
                        change = " ",
                        delete = " ",
                    }
                    local signs = vim.b[props.buf].minidiff_summary

                    local labels = {}
                    if signs == nil then
                        return labels
                    end
                    for name, icon in pairs(icons) do
                        if tonumber(signs[name]) and signs[name] > 0 then
                            table.insert(labels, { " ", icon .. signs[name], group = "MiniDiffSign" .. name })
                        end
                    end
                    if #labels > 0 then
                        table.insert(labels, { " 󰊢 " .. signs.n_ranges .. " ┊" })
                    end
                    return labels
                end
                local function get_filename()
                    local file = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    if file == "" then
                        file = "[No Name]"
                    end
                    local icon, color = require("nvim-web-devicons").get_icon_color(file)
                    local modified = vim.bo[props.buf].modified
                    local path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":~:h:t") .. "/" .. file

                    return {
                        " ",
                        icon and { icon, " ", guibg = "none", guifg = color } or "",
                        { path, gui = modified and "bold,italic" or "bold" },
                        " ",
                    }
                end
                return {
                    { get_diagnostics() },
                    { get_diff() },
                    { get_filename() },
                    group = props.focused and "ColorColumn" or "SignColumn",
                }
            end,
            window = {
                margin = {
                    horizontal = 0,
                    vertical = 0,
                },
                padding = 0,
                placement = {
                    horizontal = "right",
                    vertical = "bottom",
                },
            },
        })
    end,
}
