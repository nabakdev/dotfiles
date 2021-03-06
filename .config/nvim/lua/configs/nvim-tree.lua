local g = vim.g
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

require'nvim-tree'.setup {
  disable_netrw = true,
  open_on_setup = true,
  hijack_cursor = true,
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = '3',
    indent_markers = {
      enable = true,
    }
  },
  filters = {
    custom = {
      '.git',
      'node_modules',
      '.cache',
      '__pycache__'
    },
  }
}

-- MAPPINGS
map('n', '<C-\\>', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>\\', ':NvimTreeToggle<cr>', opt)

