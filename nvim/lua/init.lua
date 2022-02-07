require('disable_builtin')
require('setup_packer')
require('plugins')

--Make line numbers default
vim.wo.number = true

--Enable mouse mode
vim.o.mouse = 'a'

--Use system clippboard
vim.o.clipboard = "unnamedplus"
