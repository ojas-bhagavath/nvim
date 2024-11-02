return {
    "akinsho/toggleterm.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        require("toggleterm").setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = "<leader>\\",
            direction = "float",
            float_opts = {
                border = "curved",
                width = function()
                    return math.floor(vim.o.columns * 0.8)
                end,
                height = function()
                    return math.floor(vim.o.lines * 0.8)
                end,
            },
            highlights = {
                FloatBorder = { link = "FloatBorder" },
            },
        })

        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            hidden = true,
            direction = "float",
        })

        function Lazygit_Toggle()
            lazygit:toggle()
        end

        vim.keymap.set("n", "<leader>g", "<cmd>lua Lazygit_Toggle()<CR>", { noremap = true, silent = true, desc = "Lazygit" })
    end,
    keys = {
        {
            "<leader>\\",
            mode = { "n" },
            "<cmd>ToggleTerm direction=float<cr>",
            desc = "Toggleterm Horizontal",
        },
    },
}
