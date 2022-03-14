require('disable_builtin')
require('setup_packer')
require('plugins')

local nnoremap = require('utils').nnoremap

-- TODO: Add description
vim.cmd('colorscheme nord')

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

-- indent
--Use system clippboard
vim.o.clipboard = "unnamedplus"

-- TODO: Add description
vim.opt.tabstop = 2

-- TODO: Add description
vim.opt.softtabstop = 2

-- TODO: Add description
vim.opt.shiftwidth = 2

-- TODO: Add description
vim.opt.expandtab = true


-- TODO: Add description
vim.g.mapleader = ' '

-- Better windows navigation

nnoremap('<A-h>', '<C-w>h')
nnoremap('<A-j>', '<C-w>j')
nnoremap('<A-k>', '<C-w>k')
nnoremap('<A-l>', '<C-w>l')
