" COQ autostart
" let g:coq_settings = { 'auto_start': 'shut-up' }
autocmd BufRead,BufNewFile * setlocal spell spelllang=en_us
syntax match quoteblock /"[^"]\+"/ contains=@NoSpell

call plug#begin('~/.vim/plugged')
  " Formatting
  Plug 'lukas-reineke/lsp-format.nvim'
  " Theme's
  Plug 'gruvbox-community/gruvbox'
  Plug 'ray-x/aurora'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'rebelot/kanagawa.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-fugitive'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'markvincze/panda-vim'
  " nvim-cmp
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
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
  Plug 'mfussenegger/nvim-dap-python'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'mxsdev/nvim-dap-vscode-js'
  " Notify
  Plug 'rcarriga/nvim-notify'
  " Snippets
  " For luasnip users.
  Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'
  " Tests
  Plug 'antoinemadec/FixCursorHold.nvim'
  Plug 'nvim-neotest/neotest'
  Plug 'haydenmeade/neotest-jest'
  Plug 'folke/neodev.nvim'
  Plug 'nvim-neotest/neotest-vim-test'
  " Icons
  Plug 'mortepau/codicons.nvim'
  " Manson
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  " Linter
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'mfussenegger/nvim-lint'
  " Dashboard
  Plug 'goolord/alpha-nvim'
  " Project Managements
  Plug 'ahmedkhalf/project.nvim'
call plug#end()

lua require('init')
highlight FloatBorder  ctermfg=NONE ctermbg=NONE cterm=NONE

