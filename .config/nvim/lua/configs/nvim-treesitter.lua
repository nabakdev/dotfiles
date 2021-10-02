local ts_config = require("nvim-treesitter.configs")

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = {"vue"},
    additional_vim_regex_highlighting = false
  }
}
