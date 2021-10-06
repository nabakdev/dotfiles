return require('packer').startup({function()
	use 'wbthomason/packer.nvim'

  -- Utilities
	use 'editorconfig/editorconfig-vim'
	use 'digitaltoad/vim-pug'
	use 'mhinz/vim-startify'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
      {'nvim-telescope/telescope-media-files.nvim'},
    },
    config = function()
      require'configs/telescope'.config()
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = ':TSUpdate',
    config = function() require'configs/nvim-treesitter' end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    wants = { "nvim-web-devicons" },
    keys = {"<leader>\\"},
    config = function() require'configs/nvim-tree' end
  }

  use {
    'b3nj5m1n/kommentary',
    config = function()
      require('kommentary.config').use_extended_mappings()
    end
  }

  -- neovim completions
  use 'neovim/nvim-lspconfig'
  use {
    'kabouzeid/nvim-lspinstall',
    --event = 'BufRead',
    config = function() require'configs/nvim-lspinstall' end
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      {
        "hrsh7th/cmp-nvim-lsp",
        after = { "nvim-cmp" },
        -- opt = true,
      },
      {
        "saadparwaiz1/cmp_luasnip",
        after = { "nvim-cmp" },
        wants = { "LuaSnip" },
        -- opt = true,
      },
      {
        "hrsh7th/cmp-buffer",
        after = { "nvim-cmp" },
        -- opt = true,
      },
      {
        "hrsh7th/cmp-path",
        after = { "nvim-cmp" },
        -- opt = true,
      },
    },
    event = { "InsertEnter" },
		config = function() require'configs/nvim-cmp' end
  }
  use {
    'onsails/lspkind-nvim',
		config = function() require'configs/lspkind-nvim' end
  }
  use { "rafamadriz/friendly-snippets", module = { "luasnip" } }
  use {
    'L3MON4D3/LuaSnip',
    wants = { "friendly-snippets" },
    event = { "InsertEnter" },
		config = function() require'configs/luasnip' end
  }
  use {
    'akinsho/toggleterm.nvim',
    config = function() require'configs/toggleterm' end
  }
  use {
    'posva/vim-vue',
		config = function()
      vim.g.vue_pre_processors = {'pug', 'sass'}
    end
  }
  -- smooth scroll
  use {
    'karb94/neoscroll.nvim',
    event = 'WinScrolled',
    config = function()
      require('neoscroll').setup()
    end
  }
  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    --event = { "InsertCharPre" },
		config = function() require'configs/nvim-autopairs' end
  }
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"
      vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
      vim.g.indent_blankline_buftype_exclude = {"terminal"}
      vim.g.indent_blankline_show_trailing_blankline_indent = false
      vim.g.indent_blankline_show_first_indent_level = false
    end
  }
  use {
    'akinsho/nvim-bufferline.lua',
		config = function() require'configs/bufferline' end
  }

  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
		config = function() require'configs/statusline' end
  }

  use {
    'norcalli/nvim-colorizer.lua',
		config = function() require'colorizer'.setup() end
  }

	use {
		'navarasu/onedark.nvim',
		config = function()
      vim.g.onedark_style = 'cool'
      vim.g.disable_toggle_style = 1
      require'onedark'.setup()
    end
	}
  use 'kyazdani42/nvim-web-devicons'
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single'})
    end,
    border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
  }
}})
