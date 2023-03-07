local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  local buffopts = { noremap=true, silent=true, buffer=bufnr }
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffopts)
  vim.keymap.set('n', '<C-K>', vim.lsp.buf.signature_help, buffopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, buffopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, buffopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, buffopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, buffopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, buffopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, buffopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, buffopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, buffopts)
end

local servers = {
  'bashls',
  'cssls',
  'dockerls',
  'emmet_ls',
  'eslint',
  'html',
  'intelephense',
  'jsonls',
  'pyright',
  'rust_analyzer',
  'tailwindcss',
  'tsserver',
  'pyright',
  'lua_ls',
  'vimls',
  'volar',
  'yamlls',
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

for _, lsp in pairs(servers) do
  if lsp == 'volar' then
    require('lspconfig')[lsp].setup {
      filetypes = {'vue'},
      -- filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
      on_attach = on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

