local g = vim.g
local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

g.nvim_tree_width = 25
g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_open = 1
g.nvim_tree_follow = 1
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

-- MAPPINGS
map('n', '<C-\\>', ':NvimTreeToggle<CR>', opt)

