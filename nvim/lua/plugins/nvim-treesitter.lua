-- TODO: Configure Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
	highlight = {
		enable = true,
		disable = function(lang, bufnr)
			return vim.api.nvim_buf_line_count(bufnr) > 6000
		end,
	},
}
