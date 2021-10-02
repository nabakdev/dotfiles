vim.g.mapleader = ' '
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

-- ESC
map('i', 'jk', '<ESC>', opt)
map('v', 'jk', '<ESC>', opt)

-- Quick save
map('n', '<leader>w', ':w <CR>', opt)

-- Quit
map('n', '<leader>q', ':q <CR>', opt)

-- Save & Quit
map('n', '<leader>x', ':x <CR>', opt)

-- remove search highlight
map('n', '<leader>/', ':set nohls <CR>', opt)

-- navigate between windows
map('', '<C-j>', '<C-W>j', opt)
map('', '<C-k>', '<C-W>k', opt)
map('', '<C-h>', '<C-W>h', opt)
map('', '<C-l>', '<C-W>l', opt)
