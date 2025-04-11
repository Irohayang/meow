-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Terminal mode navigation
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Open terminal splits
keymap("n", "<leader>th", ":split | terminal<CR>", opts)
keymap("n", "<leader>tt", ":rightbelow vsplit | terminal<CR>", opts)

-- Quick window switching
vim.keymap.set("t", "<C-Space>", "<C-\\><C-n><C-w>w", opts)
vim.keymap.set("n", "<C-Space>", "<C-w>w", opts)

