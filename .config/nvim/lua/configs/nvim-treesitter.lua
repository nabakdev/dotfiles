--[[ local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.pug = {
  install_info = {
    url = "~/tree-sitter-pug", -- local path or git repo
    files = {"src/parser.c", "src/scanner.cc" }
  },
  filetype = "pug", -- if filetype does not agrees with parser name
  used_by = {"vue"} -- additional filetypes that use this parser
} ]]

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  indent = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = {},
    --disable = {"pug"},
    additional_vim_regex_highlighting = false
  }
}
