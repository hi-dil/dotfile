return {
  "nvim-pack/nvim-spectre",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
  keys = {
    {
      "<leader>sr",
      function()
        require("spectre").open()
      end,
      desc = "Open Spectre (Search & Replace)",
    },
    {
      "<leader>sw",
      function()
        require("spectre").open_visual({ select_word = true })
      end,
      desc = "Search current word",
    },
    {
      "<leader>sr",
      mode = "v",
      function()
        require("spectre").open_visual()
      end,
      desc = "Search selected text",
    },
  },
}
