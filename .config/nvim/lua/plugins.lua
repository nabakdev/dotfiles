require('packer').startup({function(use)
	use 'wbthomason/packer.nvim'

  use 'onsails/lspkind-nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
      { 'saadparwaiz1/cmp_luasnip', after = { 'cmp-nvim-lsp' } },
      { 'hrsh7th/cmp-buffer', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-cmdline', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-path', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-nvim-lsp-signature-help', after = { 'nvim-cmp' } },
    },
    event = { 'InsertEnter', 'CmdlineEnter' },
    after = { 'lspkind-nvim' },
		config = [[require'configs.nvim-cmp']],
  }

  use {
    'L3MON4D3/LuaSnip',
    requires = { 'rafamadriz/friendly-snippets' },
		config = [[require'configs.luasnip']],
  }

	use {
    'williamboman/nvim-lsp-installer',
    requires = 'neovim/nvim-lspconfig',
		config = [[require'configs.lsp']],
  }

	use 'editorconfig/editorconfig-vim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
      {'nvim-telescope/telescope-media-files.nvim'},
    },
		config = [[require'configs.telescope']],
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    -- event = 'BufRead',
    run = ':TSUpdate',
		config = [[require'configs.nvim-treesitter']],
  }
  use {
    'kyazdani42/nvim-tree.lua',
    wants = { 'nvim-web-devicons' },
    keys = { '<leader>\\' },
		config = [[ require'configs.nvim-tree' ]],
  }

  use {
    'b3nj5m1n/kommentary',
		config = [[ require'kommentary.config'.use_extended_mappings() ]],
  }

  use {
    'akinsho/toggleterm.nvim',
		config = [[require'configs.toggleterm']],
  }

  use {
    'karb94/neoscroll.nvim',
    event = 'WinScrolled',
		config = [[require'neoscroll'.setup()]],
  }

  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    event = { 'InsertCharPre' },
		config = [[require'configs.nvim-autopairs']],
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    event = 'BufRead',
		config = [[require'configs.indent-blankline']],
  }

  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons',
		config = [[require'configs.bufferline']],
  }

  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
		config = [[require'configs.statusline']],
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'norcalli/nvim-colorizer.lua',
		config = [[require'colorizer'.setup()]],
  }

	use {
		'navarasu/onedark.nvim',
		config = function()
      require'onedark'.setup { style = 'darker' }
      require'onedark'.load()
    end
	}

  use {
    'ur4ltz/surround.nvim',
    config = [[ require'surround'.setup { mapping_style = 'surround'} ]]
  }

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single'})
    end,
    border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}
  }
}})

