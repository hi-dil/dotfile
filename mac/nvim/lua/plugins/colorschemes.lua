return {
  {
    "everviolet/nvim",
    name = "evergarden",
    lazy = false,
    priority = 1000,
    opts = {
      theme = {
        variant = "fall", -- 'winter'|'fall'|'spring'|'summer'
        accent = "green",
      },
      editor = {
        transparent_background = true,
        override_terminal = true,
        sign = { color = "none" },
        float = {
          color = "mantle",
          solid_border = false,
        },
        completion = {
          color = "surface0",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "evergarden",
    },
  },

  { "folke/tokyonight.nvim", enabled = false },
}
