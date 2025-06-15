require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "markdown_inline",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "json",
    "yaml",
    "bash",
    "dockerfile",
    "jinja",
    "jinja_inline"
  },
  auto_install = true,
  highlight = {
    enable = true,
  }
}
require'colorizer'.setup()
