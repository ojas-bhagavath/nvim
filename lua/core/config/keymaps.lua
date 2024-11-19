-- jk for escape
vim.keymap.set({ "i", "v" }, "jk", "<ESC>", { silent = true, nowait = true })
vim.keymap.set({ "i", "v" }, "kj", "<ESC>", { silent = true, nowait = true })

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- split pane management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Pane Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Pane Horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" })

-- buffer management
vim.keymap.set("n", "<leader>bb", "<cmd>buffer#<CR>", { desc = "Switch to Last Buffer" })

-- tab management
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
vim.keymap.set("n", "<leader><tab>x", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabn<CR>", { desc = "Go To Next Tab" })
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabp<CR>", { desc = "Go To Prev Tab" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in a New Tab" })

-- resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- clear search, diff update and redraw
vim.keymap.set("n", "<leader>rr", "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>", { desc = "Redraw / Clear hlsearch / Diff Update" })

-- saner-behavior-of-n-and-N
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")
