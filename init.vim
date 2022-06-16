" COQ autostart
" let g:coq_settings = { 'auto_start': 'shut-up' }

call plug#begin('~/.vim/plugged')
  Plug 'gruvbox-community/gruvbox'
  Plug 'ray-x/aurora'
  Plug 'nvim-lualine/lualine.nvim'
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
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'folke/todo-comments.nvim'
  " Colorizer
  Plug 'norcalli/nvim-colorizer.lua'
  " Nvim COQ
  " Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  " Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  " Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
  " LSP Installer
  Plug 'williamboman/nvim-lsp-installer'
  " Debugger Adapter
  Plug 'mfussenegger/nvim-dap'
  " Notify
  Plug 'rcarriga/nvim-notify'
call plug#end()

lua require('init')

