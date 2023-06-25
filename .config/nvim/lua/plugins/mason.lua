return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "eslint-lsp",
      "html-lsp",
      "json-lsp",
      "lua-language-server",
      "prettierd",
      "tailwindcss-language-server",
      "typescript-language-server",
      "vue-language-server",
    })

    opts.ui = {
      border = "rounded",
    }
  end,
}
