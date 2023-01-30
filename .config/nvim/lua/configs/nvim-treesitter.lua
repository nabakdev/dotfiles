local parsers = {
  "bash",
  "css",
  "comment",
  "css",
  "diff",
  "dot",
  "dockerfile",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "graphql",
  "html",
  "javascript",
  "json",
  "jsonc",
  "lua",
  "make",
  "markdown",
  "markdown_inline",
  "php",
  "pug",
  "python",
  "query",
  "regex",
  "scheme",
  "scss",
  "sql",
  "toml",
  "typescript",
  "vim",
  "vue",
  "yaml"
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = parsers,
  sync_install = false,
  auto_install = false,
  indent = {
    enable = true,
    disable = { 'yaml', 'python' }
  },
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
    disable = {},
    additional_vim_regex_highlighting = false
  }
}

vim.api.nvim_create_user_command('TSInstallParsers', function ()
  vim.cmd('TSInstall  ' .. table.concat(parsers, ' '))
end, {})
