local map = vim.api.nvim_set_keymap
local ls = require "luasnip"

require("luasnip.config").setup {
  history = true,
  updateevents = "TextChanged,TextChangedI",
  delete_check_events = "TextChanged,TextChangedI",
}

require("luasnip.loaders.from_vscode").load {}

function _G.x_expand()
  if ls.expand_or_jumpable() then
    return ls.expand_or_jump()
  end
  return
end

function _G.x_luasnip_jump(dir)
  if ls.jumpable(dir) then
    ls.jump(dir)
  end
  return
end

map('i', "<C-j>", 'v:lua.x_expand()', { expr = true, silent = true })
map('i', "<C-k>", 'v:lua.x_luasnip_jump(-1)', { expr = true, silent = true })
map('s', "<C-j>", 'v:lua.x_luasnip_jump(1)', { expr = true, silent = true })
map('s', "<C-k>", 'v:lua.x_luasnip_jump(-1)', { expr = true, silent = true })

-- inoremap {
--   "<C-e>",
--   function()
--     return ls.choice_active() and ls.change_choice(1)
--   end,
--   { silent = true },
-- }

-- snoremap {
--   "<C-e>",
--   function()
--     return ls.choice_active() and ls.change_choice(1)
--   end,
--   { silent = true },
-- }

