local map = vim.api.nvim_set_keymap -- Key Mapping
local options = { noremap = true }

-- map('n', '<leader>gcf', ':Git checkout -b feature/<cr>', options)
map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<cr>', options)
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', options)
-- Fugitive Mapping
map('n', '<leader>gg', ':Git<cr>', options)
map('n', '<leader>gc', ':Git commit<cr>', options)
map('n', '<leader>gf', ':diffget //2<cr>', options)
map('n', '<leader>gj', ':diffget //3<cr>', options)
-- Window moviments
map('n', '<leader>s', ':wincmd s<cr>', options)
map('n', '<leader>v', ':wincmd v<cr>', options)
map('n', '<leader>l', ':wincmd l<cr>', options)
map('n', '<leader>h', ':wincmd h<cr>', options)
map('n', '<leader>j', ':wincmd j<cr>', options)
map('n', '<leader>k', ':wincmd k<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
-- map('n', '<leader>l', ':wincmd l<cr>', options)
-- Telescope mapping
map('n', '<leader>ff', ':Telescope find_files<cr>', options)
map('n', '<leader>lg', ':Telescope live_grep<cr>', options)
map('n', '<leader>ef', ':EslintFixAll<cr>', options)
map('n', '<leader>pj', ':%!python3 -m json.tool<cr>', options)
-- NvimTree Maps
map('n', '<leader>tt', ':NvimTreeToggle<cr>', options)
-- NVIM Debugger maps
map('n', '<F5>', "<Cmd>lua require'dap'.continue()<CR>", options)
map('n', '<F10>', "<Cmd>lua require'dap'.step_over()<CR>", options)
map('n', '<F11>', "<Cmd>lua require'dap'.step_into()<CR>", options)
map('n', '<F12>', "<Cmd>lua require'dap'.step_out()<CR>", options)
map('n', '<Leader>a',"<Cmd>lua require'dap'.toggle_breakpoint()<CR>", options)
map('n', '<Leader>B',"<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", options)
map('n', '<Leader>lp',"<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", options)
map('n', '<Leader>dr',"<Cmd>lua require'dap'.repl.open()<CR>", options)
map('n', '<Leader>dl',"<Cmd>lua require'dap'.run_last()<CR>", options)
