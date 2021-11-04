local set = vim.o -- Set all the variables in my editor
local fn = vim.fn -- Vim functions(aka stdpath finds a a file) 
local g = vim.g -- Global vars to define themes for instance
local map = vim.api.nvim_set_keymap -- Key Mapping
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
set.completeopt = 'menu,menuone,noselect'

-- map('n', '<leader>gcf', ':Git checkout -b feature/<cr>', options) 
map('n', '<leader>gg', ':Git<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>h', ':wincmd h<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>ff', ':Telescope find_files<cr>', options) 
map('n', '<leader>lg', ':Telescope live_grep<cr>', options) 
map('n', '<leader>ef', ':EslintFixAll<cr>', options)


-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSP Configs 
require'lspconfig'.eslint.setup { 
  capabilties = capabilities,
}
require'lspconfig'.tsserver.setup {
  capabilities = capailities,
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
require'lspconfig'.html.setup {
  capabilities = capabilities,
}

-- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

