vim.g.mapleader = ' '
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

-- ESC
map('i', 'jk', '<ESC>', opt)
map('v', 'JK', '<ESC>', opt)

-- Quick save
map('n', '<C-s>', ':w<cr>', opt)

map('n', '<leader>y', '<BS>"*y', opt) -- Copy to clipboard
map('n', '<leader>p', '"*p', opt) -- Paste from clipboard
map('i', '<C-v>', '<C-r>+', opt) -- Paste from clipboard

-- Quit
map('n', '<C-q>', ':q<cr>', opt)
map('n', '<C-Q>', ':qa<cr>', opt)

-- Save & Quit
map('n', '<leader>x', ':x<cr>', opt)

-- remove search highlight
map('n', '<leader>/', ':set nohls<cr>', opt)

-- navigate between windows
map('', '<C-J>', '<C-W>j', opt)
map('', '<C-K>', '<C-W>k', opt)
map('', '<C-h>', '<C-W>h', opt)
map('', '<C-l>', '<C-W>l', opt)

-- quick save
map('i', '<C-s>', '<ESC>:w<cr>', opt)
