local lsp = require "lspconfig"

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSP Configs
lsp.jedi_language_server.setup {
    capabilities = capabilities
}
lsp.eslint.setup {
    capabilities = capabilities
}
lsp.tsserver.setup {
    capabilities = capabilities
}
lsp.cssls.setup {
    capabilities = capabilities
}
lsp.html.setup {
    capabilities = capabilities
}
lsp.vimls.setup {
    capabilities = capabilities
}
lsp.phpactor.setup {
    capabilities = capabilities
}
lsp.sumneko_lua.setup {
    capabilities = capabilities
}
-- require "lsp_signature".setup({
--   bind = true, -- This is mandatory, otherwise border config won't get registered.
--   handler_opts = {
--     border = "rounded"
--   },
--   hint_enable = false,
-- })
