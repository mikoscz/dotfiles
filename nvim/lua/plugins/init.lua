local packer = require('packer')
local use = packer.use

use 'wbthomason/packer.nvim'

use 'arcticicestudio/nord-vim'

use { -- A collection of common configurations for Neovim's built-in language server client
  'neovim/nvim-lspconfig',
  config = [[ require('plugins/nvim-lspconfig')]]
}

use { -- TODO: Add description
  'williamboman/nvim-lsp-installer',
  config = [[ require('plugins/nvim-lsp-installer')]]
}


use { -- TODO: Add description / nerd tree alternative
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icon
  },
  config = [[ require('plugins/nvim-tree') ]]
}

use {
  'nvim-telescope/telescope.nvim',
  requires = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }, -- FZF sorter for telescope written in c
  },
  config = [[ require('plugins/telescope') ]]
}

use { -- Nvim Treesitter configurations and abstraction layer
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = [[ require('plugins/nvim-treesitter') ]]
}

use { -- A completion plugin for neovim coded in Lua.
  'hrsh7th/nvim-cmp',
  requires = {
    "hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for neovim builtin LSP client
    { "hrsh7th/cmp-nvim-lua", ft = 'lua' }, -- nvim-cmp source for nvim lua
    "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
    "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
    "hrsh7th/cmp-calc", -- nvim-cmp source for math calculation.
    "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
  },
  config = [[ require('plugins/nvim-cmp') ]]
}

use {
  "L3MON4D3/LuaSnip",
  -- wants = "friendly-snippets",
  after = "nvim-cmp",
  config = [[ require('plugins/LuaSnip') ]]
}

use {
  'akinsho/bufferline.nvim',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icon
  },
  config = [[ require('plugins/bufferline') ]]
}

use {
  'numToStr/Comment.nvim',
  config = [[ require('plugins/Comment') ]]
}

use {
  'simrat39/symbols-outline.nvim',
  config = [[ require('plugins/symbols-outline') ]]
}
