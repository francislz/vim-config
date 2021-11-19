local map = vim.api.nvim_set_keymap -- Key Mapping
local options = { noremap = true }

-- map('n', '<leader>gcf', ':Git checkout -b feature/<cr>', options)
map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<cr>', options)
map('n', '<leader>gg', ':Git<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>h', ':wincmd h<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>ff', ':Telescope find_files<cr>', options)
map('n', '<leader>lg', ':Telescope live_grep<cr>', options)
map('n', '<leader>ef', ':EslintFixAll<cr>', options)
map('n', '<leader>pj', ':%!python -m json.tool<cr>', options)
