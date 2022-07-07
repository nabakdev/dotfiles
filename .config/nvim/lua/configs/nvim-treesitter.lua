require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "dot",
    "html",
    "javascript",
    "json",
    "json5",
    "lua",
    "make",
    "markdown",
    "php",
    "phpdoc",
    "pug",
    "python",
    "regex",
    "scss",
    "toml",
    "typescript",
    "vim",
    "vue",
    "yaml"
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm'
    }
  },
  highlight = {
    enable = true,
    -- disable = {},
    -- disable = {"php"},
    additional_vim_regex_highlighting = false
  }
}
