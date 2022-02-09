local packer = require('packer')
local use = packer.use

use 'wbthomason/packer.nvim'

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
		'nvim-lua/plenary.nvim',
	},
	config = [[ require('plugins/telescope') ]]
}
