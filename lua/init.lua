-- local fn = vim.fn -- Vim functions(aka stdpath finds a a file)
local g = vim.g -- Global vars to define themes for instance

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "

vim.cmd 'colorscheme gruvbox'

require('sets')
require('maps')
require('lsp')
require('comp')
