-- Map 'kj' to <Esc> in insert mode
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true })
vim.keymap.set('i', 'df', '<Esc>', { noremap = true })

-- redo
vim.keymap.set('n', '<leader>u', ':redo<CR>', { noremap = true })

-- Define space as a leader key
vim.keymap.set('', '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '

-- vim.keymap.set("n", "<leader>e", ":Lex<cr>:vertical resize 35<cr>")
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<C-Left>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-Right>", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>s", vim.cmd.vsplit)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>v", "\"_dp")

-- next greatest remap ever 
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

-- Map <Leader>v to paste from clipboard
vim.keymap.set('n', '<Leader>p', '"+p', { noremap = true, silent = true })

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv");
vim.keymap.set('v', "K", ":m '>-2<CR>gv=gv");
