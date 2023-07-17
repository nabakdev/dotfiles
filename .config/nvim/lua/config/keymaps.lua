-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opt = { silent = true, noremap = true }
local map = vim.api.nvim_set_keymap

map("n", "<leader>fg", ':lua require("telescope.builtin").live_grep()<CR>', opt)
map("n", "<leader>bco", ":BufferLineCloseOthers<CR>", opt)
map("i", "<C-e>", "<Esc>A", opt)
