-- Map 'kj' to <Esc> in insert mode
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true })

-- Define space as a leader key
vim.keymap.set('', '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dp")

-- next greatest remap ever 
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

-- Map <Leader>v to paste from clipboard
vim.keymap.set('n', '<Leader>p', '"+p', { noremap = true, silent = true })
