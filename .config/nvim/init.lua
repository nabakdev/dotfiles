require 'configs/nvim'
require 'plugins'
require 'bindings'

vim.api.nvim_command([[
autocmd BufNewFile  *.vue 0r ~/.config/nvim/snippets/snippet.vue
]])
