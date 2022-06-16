local g = vim.g -- Global vars to define themes for instance

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "
g.solarized_visibility = "high"
g.solarized_diffmode = "low"

vim.cmd 'colorscheme aurora'
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
