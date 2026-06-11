return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    main = "nvim-silicon",
    opts = {
      theme = "catppuccin-mocha",
      background = "#11111b", -- catppuccin mocha crust
      font = "JetBrainsMono Nerd Font=34", -- adjust to your font
      pad_horiz = 80,
      pad_vert = 60,
      to_clipboard = true,
      window_title = function()
        return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
      end,
      line_offset = function(args)
        return args.line1
      end,
    },
    keys = {
      {
        "<leader>Ss",
        function()
          require("nvim-silicon").shoot()
        end,
        mode = "v",
        desc = "Create screenshot",
      },
      {
        "<leader>Sc",
        function()
          require("nvim-silicon").clip()
        end,
        mode = "v",
        desc = "Screenshot to clipboard",
      },
      {
        "<leader>Sf",
        function()
          require("nvim-silicon").file()
        end,
        mode = "v",
        desc = "Screenshot to file",
      },
      {
        "<leader>SS",
        function()
          local view = vim.fn.winsaveview()
          vim.cmd("normal! ggVG")
          require("nvim-silicon").clip()
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
          vim.fn.winrestview(view)
        end,
        mode = "n",
        desc = "Screenshot whole file to clipboard",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>S", group = "silicon", mode = { "n", "v" }, icon = "󰹑" },
      },
    },
  },
}
