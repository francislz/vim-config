local lsp = require "lspconfig"

vim.filetype.add {
  extension = {
    jinja = 'jinja',
    jinja2 = 'jinja',
    j2 = 'jinja',
  },
}


-- require("nvim-lsp-installer").setup({
--     automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--     ui = {
--         icons = {
--             server_installed = "✓",
--             server_pending = "➜",
--             server_uninstalled = "✗"
--         }
--     }
-- })
-- local lsp_format = require("lsp-format")
-- lsp_format.setup {}

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSP Configs
lsp.jedi_language_server.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.eslint.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.tsserver.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.cssls.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.html.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.vimls.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.phpactor.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.lua_ls.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
lsp.angularls.setup {
  capabilities = capabilities,
}
lsp.jinja_lsp.setup {
  capabilities = capabilities,
  --on_attach = lsp_format.on_attach
}
-- require "lsp_signature".setup({
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--   handler_opts = {
--     border = "rounded"
--   },
--   hint_enable = false,
-- })
