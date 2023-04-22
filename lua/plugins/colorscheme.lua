return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    on_highlights = function(highlighs, colors)
      highlighs.WinSeparator = {
        fg = "#ffffff",
      }
    end,
  },
}
