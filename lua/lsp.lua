local lsp = require "lspconfig"
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
lsp.sumneko_lua.setup {
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
