local actions = require('telescope.actions')
local nnoremap = require('utils').nnoremap

require('telescope').setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
    },

    initial_mode = "insert",
    selection_strategy = "reset",

    file_previewer = require "telescope.previewers".vim_buffer_cat.new,
    grep_previewer = require "telescope.previewers".vim_buffer_vimgrep.new,
    qflist_previewer = require "telescope.previewers".vim_buffer_qflist.new,

    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" },
    path_display = {},

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
    --
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('fzf')

nnoremap('<C-p><C-p>', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]])
nnoremap('<C-p><C-r>', [[<Cmd>lua require('telescope.builtin').oldfiles()<CR>]])
nnoremap('<C-p><C-g>', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]])
nnoremap('<C-p><C-f>', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]])
nnoremap('<C-p><C-v>', [[<Cmd>lua require('telescope.builtin').git_bcommits()<CR>]])
nnoremap('<C-p><C-m>', [[<Cmd>lua require('telescope.builtin').marks()<CR>]])
nnoremap('<C-p><C-b>', [[<Cmd>lua require('telescope.builtin').buffers()<CR>]])
nnoremap('<C-p><C-l>', [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
nnoremap('<C-p><C-h>', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]])
-- TODO: Configure LSP mappings

