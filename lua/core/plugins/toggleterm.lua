return {
    "akinsho/toggleterm.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    version = "*",
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
            "<cmd>ToggleTerm direction=horizontal<cr>",
            desc = "Toggleterm Horizontal",
        },
    },
}
