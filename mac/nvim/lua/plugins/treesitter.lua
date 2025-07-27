return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "javascript", "blade" },
    },
    config = function()
      -- These must be set correctly
      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "nvim_treesitter#foldexpr()"
      vim.o.foldlevel = 99

      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "blade",
          "php",
          "html",
          -- other parsers
        },
        highlight = { enable = true },
        -- This module must be enabled
        folding = { enable = true },
      })
    end,
  },
}
