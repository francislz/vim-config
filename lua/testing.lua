require("neotest").setup({
  adapters = {
    require('neotest-jest')({
      jestCommand = "jest --watch",
    }),
    -- require("neotest-plenary"),
    require("neotest-vim-test")({
      ignore_file_types = { "python", "vim", "lua" },
    }),
  },
})

require("neodev").setup({
  library = { plugins = { "neotest" }, types = true },
})
