-- lazy.nvim
return {
  {
    "folke/snacks.nvim",
    -- @type snacks.Config
    opts = {
      dashboard = {
        sections = {
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
      },
      image = {},
    },
  },
}
