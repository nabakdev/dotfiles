require('packer').startup({function(use)
	use 'wbthomason/packer.nvim'

  use 'onsails/lspkind-nvim'

  use {
    'glepnir/dashboard-nvim',
		config = [[require'configs.dashboard']],
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      { 'saadparwaiz1/cmp_luasnip', after = { 'cmp-nvim-lsp' } },
      { 'hrsh7th/cmp-buffer', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-cmdline', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-path', after = { 'nvim-cmp' } },
      { 'hrsh7th/cmp-nvim-lsp-signature-help', after = { 'nvim-cmp' } },
    },
    -- event = { 'InsertEnter', 'CmdlineEnter' },
    after = { 'lspkind-nvim', 'LuaSnip' },
		config = [[require'configs.nvim-cmp']],
  }

  use 'hrsh7th/cmp-nvim-lsp'

  use {
    'L3MON4D3/LuaSnip',
    requires = { 'rafamadriz/friendly-snippets' },
		config = [[require'configs.luasnip']],
  }

	use {
    'williamboman/mason.nvim',
		config = [[require'configs.mason']],
  }

	use {
    'williamboman/mason-lspconfig.nvim',
    -- after = 'mason',
		config = [[require('mason-lspconfig').setup()]],
		-- config = [[require'configs.mason-lspconfig']],
  }

	use {
    'neovim/nvim-lspconfig',
    -- after = 'mason-lspconfig',
		config = [[require'configs.nvim-lspconfig']],
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
    -- event = 'BufReadPost',
    run = ':TSUpdate',
		config = [[require'configs.nvim-treesitter']],
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    keys = { '<leader>\\' },
		config = [[ require'configs.nvim-tree' ]],
  }

  use {
    'b3nj5m1n/kommentary',
		config = [[ require'configs.kommentary' ]],
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
    -- event = { 'InsertCharPre' },
		config = [[require'configs.nvim-autopairs']],
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    -- event = 'BufRead',
		config = [[require'configs.indent-blankline']],
  }

  use {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'nvim-tree/nvim-web-devicons',
		config = [[require'configs.bufferline']],
  }

  use {
    'glepnir/galaxyline.nvim',
    branch = 'main',
		config = [[require'configs.statusline']],
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }

  use {
    'norcalli/nvim-colorizer.lua',
		config = [[require'colorizer'.setup()]],
  }

	use {
		'navarasu/onedark.nvim',
		config = function()
      require('onedark').setup {
        style = 'darker',
        -- colors = {
          -- bright_orange = "#ff8800",    -- define a new color
          -- green = '#00ffaa',            -- redefine an existing color
        -- },
        -- highlights = {
          -- ["@keyword"] = {fg = '$green'},
          -- ["@string"] = {fg = '$bright_orange'},
          -- ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
          -- ["@function.builtin"] = {fg = '#0059ff'}
        -- }
      }
      -- require'onedark'.setup { style = 'darker' }
      require'onedark'.load()
    end
	}

  use {
    'ur4ltz/surround.nvim',
    config = [[ require'surround'.setup { mapping_style = 'surround'} ]]
  }

  use 'lambdalisue/suda.vim'

  use {
    'akinsho/git-conflict.nvim',
    tag = "*",
    config = [[ require'git-conflict'.setup() ]]
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

