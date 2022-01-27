call plug#begin('~/.vim/plugged')
  Plug 'gruvbox-community/gruvbox'
  Plug 'ray-x/aurora'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neovim/nvim-lspconfig'
  " nvim-cmp
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-nvim-lua'
  Plug 'onsails/lspkind-nvim'
  " prettify vim
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  " Functions signatures
  Plug 'ray-x/lsp_signature.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()

lua require('init')

