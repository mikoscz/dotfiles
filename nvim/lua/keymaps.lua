local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- better windows navigation
keymap("n", '<A-h>', '<C-w>h', opts)
keymap("n", '<A-j>', '<C-w>j', opts)
keymap("n", '<A-k>', '<C-w>k', opts)
keymap("n", '<A-l>', '<C-w>l', opts)

-- clear highlights
keymap("n", '<leader><ESC>', ':noh<CR>', opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-x>", ":bd<CR>", opts)

-- press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- move text up and down
keymap("n", "<C-j>", "<ESC>:m .+1<CR>==", opts)
keymap("n", "<C-k>", "<ESC>:m .-2<CR>==", opts)
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)

-- true zen plugin
keymap("n", "<leader>s", ":TZFocus<CR>", opts)

-- hop plugin
keymap("", "f", "<cmd>lua require'hop'.hint_char1()<cr>", opts)
