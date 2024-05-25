return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  "vimwiki/vimwiki",
  config = function()
    vim.g.vimwiki_list = {
      {
        path = "~/zettelkasten/",
        syntax = "markdown",
        ext = ".md",
      },
    }
  end,
  "renerocksai/telekasten.nvim",
}
