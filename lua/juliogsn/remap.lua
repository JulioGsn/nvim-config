-- Map 'kj' to <Esc> in insert mode
api = vim.api
api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true })

-- Define space as a leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { silent = true })

vim.g.mapleader = ' '

-- Map <Leader>c to copy to clipboard
api.nvim_set_keymap('n', '<Leader>y', '"+y', { noremap = true, silent = true })
api.nvim_set_keymap('v', '<Leader>y', '"+y', { noremap = true, silent = true })

-- Map <Leader>v to paste from clipboard
api.nvim_set_keymap('n', '<Leader>p', '"+p', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
