local nnoremap = require('utils').nnoremap

require('nvim-tree').setup {}

nnoremap('<leader>tt', ':NvimTreeToggle<CR>')
nnoremap('<leader>tc', ':NvimTreeFindFileToggle<CR>')
