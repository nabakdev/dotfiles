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
    'neovim/nvim-lspconfig',
    event = 'BufRead',
    config = function() require'configs/lspconfig' end
  }
  use 'kabouzeid/nvim-lspinstall'
--  use {
--    'Pocco81/AutoSave.nvim',
--    event = 'BufModifiedSet',
--    config = function()
--      require'autosave'.setup()
--    end
--  }
  use {
    'nvim-treesitter/nvim-treesitter',
    event = 'BufRead',
    run = ':TSUpdate',
    config = function() require'configs/nvim-treesitter' end
  }
  use {
    'onsails/lspkind-nvim',
    event = 'BufRead',
    config = function() require'lspkind'.init() end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'configs/nvim-tree' end
  }
  use {
    'hrsh7th/nvim-compe',
    ----event = 'InsertEnter',
		config = function() require'configs/compe' end
  }
  use 'sbdchd/neoformat'
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
  --use 'digitaltoad/vim-pug'
  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
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
		--config = function() require'configs/bufferline' end
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

  -- snippet support
  use {
    'hrsh7th/vim-vsnip',
    event = 'InsertCharPre'
  }
  use 'rafamadriz/friendly-snippets'
	-- Appearance
  --use 'sheerun/vim-polyglot'
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
