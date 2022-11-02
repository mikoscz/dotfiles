local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.nnoremap(lhs, rhs, opts) return M.map('n', lhs, rhs, opts) end

function M.useTabs()
  vim.opt.expandtab = false
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 0
end

function M.useSpaces()
  vim.opt.expandtab = false
  vim.opt.shiftwidth = 2
  vim.opt.softtabstop = 0
end

return M
