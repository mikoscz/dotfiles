-- TODO: cleanup
local servers = {
  "sumneko_lua", -- for Lua
  "emmet_ls", -- for HTML snippets
  "tsserver", -- for JS
  "ember", -- for Ember
  -- "rust_analyzer",      -- for Rust
  -- "pyright",            -- for Python
  -- "clangd",             -- for C/C++
  -- "bashls",             -- for Bash
}

require("nvim-lsp-installer").setup {
  ensure_installed = servers,
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗",
    },
  },
  -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
  -- servers that are requested to be installed will be put in a queue.
  max_concurrent_installers = 4,
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

local function on_attach(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl',
    '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts)
end

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {

    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim', 'use' global
        globals = { 'vim', 'use', 'require' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false },
    },
  }
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
}

lspconfig.emmet_ls.setup {
  on_attach = on_attach,
}

lspconfig.ember.setup {
  on_attach = on_attach,
}

-- Provide settings first!
--lsp_installer.settings {
--}

--lsp_installer.setup
--
--local function make_server_ready(attach)
-- lsp_installer.on_server_ready(function(server)
--   local opts = {}
--
--   -- for lua
--   if server.name == "sumneko_lua" then
--     -- only apply these settings for the "sumneko_lua" server
--     opts.settings = {
--       Lua = {
--         diagnostics = {
--           -- Get the language server to recognize the 'vim', 'use' global
--           globals = { 'vim', 'use', 'require' },
--         },
--         workspace = {
--           -- Make the server aware of Neovim runtime files
--           library = vim.api.nvim_get_runtime_file("", true),
--         },
--         -- Do not send telemetry data containing a randomized but unique identifier
--         telemetry = { enable = false },
--       },
--     }
--   end
--   server:setup(opts)
-- end)
--endnd

--local function install_server(server)
-- local lsp_installer_servers = require('nvim-lsp-installer.servers')
-- local ok, server_analyzer = lsp_installer_servers.get_server(server)
-- if ok then
--   if not server_analyzer:is_installed() then
--     server_analyzer:install(server) -- will install in background
--     -- lsp_installer.install(server)     -- install window will popup
--   end
-- end
--end

-- setup the LS
-- local on_attach = require("plugins.nvim-lspconfig").on_attach
-- make_server_ready(on_attach) -- LSP mappings

-- install the LS
-- for _, server in ipairs(servers) do install_server(server) end
