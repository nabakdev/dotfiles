vim.g.mapleader = ' '
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

-- ESC
map('i', 'jk', '<ESC>', opt)
map('v', 'JK', '<ESC>', opt)

-- Quick save
map('n', '<leader>w', ':w<cr>', opt)

-- Quit
map('n', '<leader>q', ':q<cr>', opt)
map('n', '<leader>Q', ':qa<cr>', opt)

-- Save & Quit
map('n', '<leader>x', ':x<cr>', opt)

-- remove search highlight
map('n', '<leader>/', ':set nohls<cr>', opt)

-- navigate between windows
map('', '<C-j>', '<C-W>j', opt)
map('', '<C-k>', '<C-W>k', opt)
map('', '<C-h>', '<C-W>h', opt)
map('', '<C-l>', '<C-W>l', opt)
