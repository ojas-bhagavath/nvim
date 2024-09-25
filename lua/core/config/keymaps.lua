local map = vim.keymap.set

-- jk for escape
map({ "i", "v" }, "jk", "<ESC>", { silent = true, nowait = true })
map({ "i", "v" }, "kj", "<ESC>", { silent = true, nowait = true })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- split pane management
map("n", "<leader>sv", "<C-w>v", { desc = "Split Pane Vertically" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split Pane Horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

-- buffer management
map("n", "<leader>bb", "<cmd>buffer#<CR>", { desc = "Switch to Last Buffer" })
-- tab management
map("n", "<leader><tab>o", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
map("n", "<leader><tab>x", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
map("n", "<leader><tab>n", "<cmd>tabn<CR>", { desc = "Go To Next Tab" })
map("n", "<leader><tab>p", "<cmd>tabp<CR>", { desc = "Go To Prev Tab" })
map("n", "<leader><tab>f", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in a New Tab" })

-- resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- clear search, diff update and redraw
map("n", "<leader>rr", "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>", { desc = "Redraw / Clear hlsearch / Diff Update" })

-- saner-behavior-of-n-and-N

map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- lazy
map("n", "<leader>la", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>ls", "<cmd>Lazy sync<cr>", { desc = "Lazy Sync" })

-- options
map("n", "<leader>on", "<cmd>set nu!<cr>", { desc = "Toggle Line Number" })
map("n", "<leader>oN", "<cmd>set rnu!<cr>", { desc = "Toggle Relative Number" })
map("n", "<leader>ow", "<cmd>set wrap!<cr>", { desc = "Toggle Wrap" })
