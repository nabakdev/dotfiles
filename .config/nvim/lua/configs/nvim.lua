local opt = vim.opt

-- indent
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- appearance
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.list = true
opt.listchars = 'trail:·,precedes:«,extends:»,eol:↲,tab:▸\\ '
opt.showmatch = true

-- disable builtin neovim plugins
vim.g.loaded_gzip = 0
vim.g.loaded_tar = 0
vim.g.loaded_tarPlugin = 0
vim.g.loaded_zipPlugin = 0
vim.g.loaded_2html_plugin = 0
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0
vim.g.loaded_matchit = 0
vim.g.loaded_matchparent = 0
vim.g.loaded_spec = 0

-- enable smartcase (set to ignorecase if lowercase)
opt.ignorecase = true
opt.smartcase = true

-- disable backup
opt.backup = false
opt.writebackup = false
opt.swapfile = false

-- history
opt.history = 10

-- display matches while typing search
opt.incsearch = true

-- restore last cursor position
vim.api.nvim_command([[
autocmd BufRead * autocmd FileType <buffer> ++once if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
]])

-- make undo available even after closing window
opt.undodir = '/home/nabak/.local/share/nvim/undo'
opt.undofile = true

-- bindings
vim.g.mapleader = ' '
local o = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

-- ESC
map('i', 'jk', '<ESC>', o)
map('v', 'hl', '<ESC>', o)

-- Quick save
map('n', '<leader>w', ':w<cr>', o)

-- Quit
map('n', '<leader>q', ':q<cr>', o)
map('n', '<leader>Q', ':qa<cr>', o)

-- Save & Quit
map('n', '<leader>x', ':x<cr>', o)

-- remove search highlight
map('n', '<leader>/', ':set nohls<cr>', o)

-- navigate between windows
map('', '<C-j>', '<C-W>j', o)
map('', '<C-k>', '<C-W>k', o)
map('', '<C-h>', '<C-W>h', o)
map('', '<C-l>', '<C-W>l', o)
