-- 	General
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>nh", ":noh<CR>", {desc = "Turn off search highlight"})
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {desc = "Exit from terminal mode"})
vim.keymap.set("v", "<", "<gv", {desc = "Move indent left without leaving V mode"})
vim.keymap.set("v", ">", ">gv", {desc = "Move indent right without leaving V mode"})

-- Moving lines
vim.keymap.set("n", "<A-j>", "<cmd>m+1<CR>==", {desc = "Move current line down"})
vim.keymap.set("n", "<A-k>", "<cmd>m-2<CR>==", {desc = "Move current line up"})
vim.keymap.set("i", "<A-j>", "<Esc><cmd>m+1<CR>==gi", {desc = "Move current line down"})
vim.keymap.set("i", "<A-k>", "<Esc><cmd>m-2<CR>==gi", {desc = "Move current line up"})
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "Move current line(s) down"})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {desc = "Move current line(s) up"})


--	Window managment
-- Better moving
vim.keymap.set("n", "<C-h>", "<C-w>h") 
vim.keymap.set("n", "<C-j>", "<C-w>j") 
vim.keymap.set("n", "<C-k>", "<C-w>k") 
vim.keymap.set("n", "<C-l>", "<C-w>l") 
-- Splitting
vim.keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window verticaly"})
vim.keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontaly"})
vim.keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make splits equal size"})
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Save and close current split"})

--	Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab"})
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab"})
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to previous tab"})
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})
