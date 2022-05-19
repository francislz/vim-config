local coq = require "coq" -- add this
local lsp = require "lspconfig"
-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
--
-- LSP Configs
lsp.jedi_language_server.setup(coq.lsp_ensure_capabilities())
lsp.eslint.setup(coq.lsp_ensure_capabilities())
lsp.tsserver.setup(coq.lsp_ensure_capabilities())
lsp.cssls.setup(coq.lsp_ensure_capabilities())
lsp.html.setup(coq.lsp_ensure_capabilities())
lsp.vimls.setup(coq.lsp_ensure_capabilities())
lsp.phpactor.setup(coq.lsp_ensure_capabilities())
lsp.sumneko_lua.setup(coq.lsp_ensure_capabilities())

-- require "lsp_signature".setup({
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--   handler_opts = {
--     border = "rounded"
--   },
--   hint_enable = false,
-- })
