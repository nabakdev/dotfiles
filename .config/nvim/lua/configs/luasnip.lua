local ls = require "luasnip"

require("luasnip.config").setup {
  history = true,
  updateevents = "TextChanged,TextChangedI",
}

require("luasnip.loaders.from_vscode").lazy_load()

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
