require('disable_builtin')
require('setup_packer')
require('plugins')

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

-- indent
--Use system clippboard
vim.o.clipboard = "unnamedplus"

-- TODO: Add description
vim.b.tabstop = 2

-- TODO: Add description
vim.b.softtabstop = 2

-- TODO: Add description
vim.b.shiftwidth = 2

-- TODO: Add description
vim.b.expandtab = true


-- TODO: Add description
vim.g.mapleader = ' '
