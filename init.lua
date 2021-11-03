local set = vim.o -- Set all the variables in my editor
local fn = vim.fn -- Vim functions(aka stdpath finds a a file) 
local g = vim.g -- Global vars to define themes for instance
local map = vim.api.nvim_set_keymap -- Key Mapping

require 'paq' {
	'gruvbox-community/gruvbox',
  'vim-airline/vim-airline',
  'tpope/vim-fugitive'
}

local options = { noremap = true } 

g.gruvbox_contrast_dark = "hard"
g.mapleader = " "

vim.cmd 'colorscheme gruvbox'

set.number = true
set.encoding = 'utf-8'
set.cmdheight = 2
set.hidden = true
set.ignorecase = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.termguicolors = true
set.smartcase = true
set.incsearch = true
set.mouse = 'nv'
