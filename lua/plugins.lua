-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- -- Formatting
  -- use 'lukas-reineke/lsp-format.nvim'
  -- -- Theme's
  use 'gruvbox-community/gruvbox'
  -- use 'ray-x/aurora'
  -- use 'folke/tokyonight.nvim', { 'branch': 'main' }
  -- use 'rebelot/kanagawa.nvim'
  -- use 'nvim-lualine/lualine.nvim'
  -- use 'vim-airline/vim-airline'
  use 'tpope/vim-fugitive'
  -- use 'markvincze/panda-vim'
  -- LSP Config
  use 'neovim/nvim-lspconfig'
  -- Nvim Tree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    }
  }
  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'onsails/lspkind-nvim',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }
  -- Snippets For luasnip users.
  -- 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
  -- -- Functions signatures
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'folke/todo-comments.nvim'
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- -- Nvim COQ
  -- " use 'ms-jpq/coq_nvim', {'branch': 'coq'}
  -- " use 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  -- " use 'ms-jpq/coq.thirdparty', {'branch': '3p'}
  -- Debugger Adapter
  use {
    'mfussenegger/nvim-dap',
    requires = {
      'mfussenegger/nvim-dap-python',
      'rcarriga/nvim-dap-ui',
      -- 'theHamsta/nvim-dap-virtual-text',
      'nvim-telescope/telescope-dap.nvim',
      'mxsdev/nvim-dap-vscode-js',
    }
  }
  -- Notify
  use 'rcarriga/nvim-notify'
  -- -- Tests
  -- use 'antoinemadec/FixCursorHold.nvim'
  -- use 'nvim-neotest/neotest'
  -- use 'haydenmeade/neotest-jest'
  -- use 'folke/neodev.nvim'
  -- use 'nvim-neotest/neotest-vim-test'
  -- -- Icons
  -- use 'mortepau/codicons.nvim'
  -- Manson
  use {
    'williamboman/mason.nvim',
    requires = {
      'williamboman/mason-lspconfig.nvim'
    }
  }
  -- -- Linter
  -- use 'jose-elias-alvarez/null-ls.nvim'
  -- use 'mfussenegger/nvim-lint'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  -- Dashboard
  use {
    'goolord/alpha-nvim',
    requires = {
      'ahmedkhalf/project.nvim',
    }
  }
  -- Vim Training
  use 'ThePrimeagen/vim-be-good'
  -- Rafactoring
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }
end)
