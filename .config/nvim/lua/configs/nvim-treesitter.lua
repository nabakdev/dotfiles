require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    --[[ "bash",
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
    "yaml" ]]
  },
  auto_install = true,
  indent = {
    enable = true,
    disable = { 'yaml', 'python' }
  },
  --[[ incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm'
    }
  }, ]]
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      typescript = '// %s',
      pug = '// %s',
      vue = '<!-- %s -->',
      html = '<!-- %s -->',
      json = ''
    }
  },
  highlight = {
    enable = true,
    -- disable = {},
    disable = {"latex"},
    additional_vim_regex_highlighting = false
  }
}
