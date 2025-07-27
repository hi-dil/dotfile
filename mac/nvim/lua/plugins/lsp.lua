return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_ls = {
        filetypes = { "html", "css", "blade" },
      },
      html = {},
      cssls = {},
      tsserver = {},
    },
  },
}
