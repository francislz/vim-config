local g = vim.g -- Global vars to define themes for instance

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "
g.solarized_visibility = "high"
g.solarized_diffmode = "low"

vim.cmd 'colorscheme gruvbox'
vim.cmd 'set termguicolors'

require('maps')
require('comp')
require('lsp')
require('trees')
require('sets')
