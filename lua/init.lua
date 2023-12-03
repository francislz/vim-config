local g = vim.g -- Global vars to define themes for instance

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "
g.solarized_visibility = "high"
g.solarized_diffmode = "low"

vim.cmd 'colorscheme gruvbox'
vim.cmd 'set termguicolors'
vim.notify = require('notify')

require('sets')
require('maps')
require('ntree')
require('lsp')
require('ncmp')
require('comments')
require('dashboard')
require('tsitter')
require('snippets')
require('installers')
require('refactor')
