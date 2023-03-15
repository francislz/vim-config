local g = vim.g -- Global vars to define themes for instance

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "
g.solarized_visibility = "high"
g.solarized_diffmode = "low"

vim.cmd 'colorscheme panda'
vim.cmd 'set termguicolors'
vim.notify = require('notify')

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

require('sets')
require('maps')
require('comp')
require('lsp')
require('trees')
require('tree')
require('colorizer-configs')
require('comments-highlights')
require('debugger')
require('snippets')
require('testing')
require('dashboard')
local codicons = require('codicons')
codicons.setup({
  -- Override by mapping name to icon
  ['account'] = '',
  -- Or by name to hexadecimal/decimal value
  ['comment'] = 0xEA6B, -- hexadecimal
  ['archive'] = 60056, -- decimal
})

-- local null_ls = require("null-ls")
-- 
-- null_ls.setup({
--     sources = {
--         null_ls.builtins.formatting.stylua,
--         null_ls.builtins.diagnostics.eslint,
--         null_ls.builtins.completion.spell,
--     },
-- })

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
