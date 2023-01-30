local opt = vim.opt
local home = os.getenv('HOME')

-- make nvim smoother
opt.timeoutlen = 1000
opt.ttimeoutlen = 0

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
opt.listchars = 'trail:·,precedes:«,extends:»,eol:↴,tab:▸\\ '
opt.showmatch = true
opt.cursorline = true

-- copy clipboard to system
opt.clipboard = 'unnamedplus'
-- opt.cursorcolumn = true

-- disable builtin neovim plugins
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.g.loaded_matchit = 0
-- vim.g.loaded_matchparent = 0
-- vim.g.loaded_spec = 0

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

-- vim.cmd([[
-- augroup packer_user_config
  -- autocmd!
  -- autocmd BufWritePost plugins.lua source <afile> | PackerCompile
-- augroup end
-- ]])

-- make undo available even after closing window
opt.undodir = home .. '/.local/share/nvim/undo'
opt.undofile = true
