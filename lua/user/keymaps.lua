local opts = { noremap = true, silent = true }
local term_opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

-- The leader key <leader>
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Open explorer or tree
keymap('n', '<leader>o', ':NvimTreeToggle<Cr>', opts)

-- Navigation in split terminal
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize split windows with arrow keys
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Keep indent mode
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)

-- Map kj to Normal Mode
keymap('i', 'kj', '<ESC>', opts)

-- put ; in the end of the line
keymap('n', ';', 'A;<ESC>', opts)

-- Save file
keymap('n', '<c-s>', ':w<CR>', opts)
keymap('i', '<c-s>', '<ESC>:w<CR>', opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Essa daqui eu sempre quis na minha vida
-- Mantém a palavra copiada no buffer padrão do vim
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope fuzzy finder

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Copy and paste
keymap('n', '<leader>c', '"+y<CR>', opts) -- copy to default buffer (transfer area)
keymap('v', '<leader>c', '"+y<CR>', opts) -- copy to default buffer (transfer area)
keymap('n', '<leader>p', '"+p', opts) -- copy to default buffer (transfer area)
keymap('v', '<leader>p', '"+p', opts) -- copy to default buffer (transfer area)

-- Bufferline
keymap('n', '<S-l>', ':BufferLineCycleNext<CR>', opts) -- copy to default buffer (transfer area)
keymap('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts) -- copy to default buffer (transfer area)

-- Bbye (Close open tabs of Bufferline)
keymap('n', '<leader>dt', ':Bdelete<CR>', opts) -- copy to default buffer (transfer area)

-- Toggle Terminal
-- keymap('n', '<leader>tt', ':ToggleTerm<CR>', opts) -- copy to default buffer (transfer area)
-- keymap('n', '<leader>th', ':ToggleTerm direction=horizontal <CR>', opts) -- copy to default buffer (transfer area)


-- FZF
keymap('n', '<leader>f', ':Files<CR>', opts)

-- Buffers
keymap('n', '<leader>b', ':Buffers<CR>', opts)

-- Tabs
--keymap('n', '<S-n>', ':tabnew<CR>', opts)
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprev<CR>', opts)
--keymap('n', '<S-k>', ':tabclose<CR>', opts)


