require('telescope').setup {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = "   ",
    entry_prefix = " ",
    file_ignore_patterns = {'^public/', '^cache/', '^.cache/', '^node_modules/', '^vendor/'},
    winblend = 0,
    border = {},
    use_less = true,
    set_env = { COLORTERM = "truecolor" },
    preview = {
      treesitter = true
    },
    mappings = {
      i = {
        ['<esc>'] = require('telescope.actions').close,
        ['jk'] = require('telescope.actions').close,
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case" -- or "ignore_case" or "respect_case"
    },
    media_files = {
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  },
  pickers = {
    find_files = {
      find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix' }
    },
    live_grep = {
      find_command = {
        'rg',
        '--color=never',
        '--no-heading',
        '--with-filename',
        '--line-number',
        '--column',
        '--smart-case',
        '-u'
      }
    }
  }
}
require("telescope").load_extension("fzf")
require("telescope").load_extension("media_files")

local opt = {silent = true, noremap = true}
local map = vim.api.nvim_set_keymap

map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>', opt)
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>', opt)
map('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>', opt)
map('n', '<leader>fh', ':lua require("telescope.builtin").help_tags()<CR>', opt)
