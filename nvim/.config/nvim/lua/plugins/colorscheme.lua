return {
  { "folke/tokyonight.nvim", enabled = false },
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { blink_cmp = true },
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
}
