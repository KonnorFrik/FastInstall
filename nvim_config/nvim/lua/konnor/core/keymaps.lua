vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":noh<CR>", { desc = "Turn off search highlight" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window verticaly" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontaly" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- exit from terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit from terminal mode" })
