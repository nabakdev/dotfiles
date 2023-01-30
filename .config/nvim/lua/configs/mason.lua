local mason_loaded, mason = pcall(require, 'mason')

if not mason_loaded then
  print('mason not loaded')
  return
end

local packages = {
  'bash-language-server',
  'css-lsp',
  'dockerfile-language-server',
  'emmet-ls',
  'eslint-lsp',
  'html-lsp',
  'intelephense',
  'json-lsp',
  'lua-language-server',
  'prettier',
  'pylint',
  'pyright',
  'rust-analyzer',
  'stylua',
  'tailwindcss-language-server',
  'typescript-language-server',
  'vim-language-server',
  'vue-language-server',
  'yaml-language-server',
}

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
    border = {
      "┌",
      "─",
      "┐",
      "│",
      "┘",
      "─",
      "└",
      "│",
    }
  }
})

vim.api.nvim_create_user_command('MasonInstallPackages', function ()
  vim.cmd('MasonInstall ' .. table.concat(packages, ' '))
end, {})
