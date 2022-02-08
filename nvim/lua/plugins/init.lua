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

use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
