vim.g.mapleader = ' '
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', opt)
map('v', 'jk', '<ESC>', opt)
map('', '<C-j>', '<C-W>j', opt)
map('', '<C-k>', '<C-W>k', opt)
map('', '<C-h>', '<C-W>h', opt)
map('', '<C-l>', '<C-W>l', opt)
-- util.nnoremap("<leader>sv", "<cmd>luafile $MYVIMRC<CR>")
--util.nnoremap("<leader>sv", "<cmd>luafile $MYVIMRC<CR>")
