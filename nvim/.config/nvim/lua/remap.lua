-- Set leader key
vim.g.mapleader = " "

-- Key mappings
local keymap = vim.keymap.set

-- File explorer
keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Move selected lines up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line(s) down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line(s) up" })

-- Yank to system clipboard
keymap({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
keymap("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", [["+p]], { desc = "Paste from system clipboard" })
vim.keymap.set("v", "<leader>p", [["+p]], { desc = "Paste from system clipboard" })


