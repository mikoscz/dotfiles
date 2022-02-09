local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.nnoremap(lhs, rhs, opts) return M.map('n', lhs, rhs, opts) end

return M
