return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim"},
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.ansible" },
  -- { import = "astrocommunity.pack.java"},
  -- { import = "astrocommunity.pack.kotlin"},
  { import = "astrocommunity.colorscheme.onedarkpro-nvim"},
  {
    "onedarkpro.nvim",
    opts = {
      styles = {
        keywords = "italic",
        functions = "bold",
      }
    }
  },
  { import = "astrocommunity.colorscheme.catppuccin"},
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      background = {
        dark = "macchiato"
      }
    }
  }
}
