local actions = require('telescope.actions')
local nnoremap = require('utils').nnoremap

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
	['<esc>'] = actions.close,
	['<C-j>'] = actions.move_selection_next,
	['<C-k>'] = actions.move_selection_previous,
	['<C-h>'] = 'which_key',
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

nnoremap('<C-p><C-p>', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]])
