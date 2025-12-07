vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

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

-- Configure borders for LSP hover and signature help
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
})

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.smartindent = true

vim.keymap.set("n", "nt", ":Neotree toggle<CR>", { desc = "Toggle NeoTree File Explorer" })

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.o.termguicolors = true
