return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "css",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "pug",
        "python",
        "query",
        "regex",
        "scss",
        "sql",
        "tsx",
        "typescript",
        "vim",
        "vue",
        "yaml",
      })
    end,
  },
}
