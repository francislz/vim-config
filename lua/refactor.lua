require('refactoring').setup({
  print_var_statements = {
    js = {
      'console.log("test-> %%s %s", %s);'
    },
    ts = {
      'console.log("test-> %%s %s", %s);'
    }
  }
})
require('telescope').load_extension('refactoring')
