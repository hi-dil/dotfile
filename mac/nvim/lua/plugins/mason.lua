return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    
    -- Configure mason-nvim-dap
    require("mason-nvim-dap").setup({
      ensure_installed = { "php" },
      automatic_installation = true,
      handlers = {
        function(config)
          -- All sources with no handler get passed here
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    })
  end,
} 