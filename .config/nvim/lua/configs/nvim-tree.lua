local g = vim.g
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

g.nvim_tree_ignore = {'.git', 'node_modules', '.cache', '__pycache__'}
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_open = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = ":t"
g.nvim_tree_add_trailing = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}

g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    default = "",
    open = "",
    symlink = "",
    empty = "",
    empty_open = "",
    symlink_open = ""
  }
}

require'nvim-tree'.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = false,
  update_to_buff_dir = {
    enable = true,
    auto_open = true,
  },
  hijack_cursor = false,
  update_cwd = false,
  lsp_diagnostic = true,
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {}
  },
  system_open = {
    cmd = nil,
    args = {}
  },
  view = {
    width = 30,
    side = 'left',
    auto_resize = true,
  },
  mappings = {
    custom_only = false,
    list = {
    }
  }
}

-- MAPPINGS
map('n', '<C-\\>', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>\\', ':NvimTreeToggle<cr>', opt)

