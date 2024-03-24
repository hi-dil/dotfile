vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", "<C-Up>", ":resize +2<cr>", {})
vim.keymap.set("n", "<C-Down>", ":resize -2<cr>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<cr>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<cr>", {})
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", {})
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>", {})
vim.keymap.set("n", "<leader>lf", function()
  vim.diagnostic.open_float({ border = "rounded" })
end, {})

vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})

-- Telescope 
vim.keymap.set("n", "<leader>fr", ":Telescope lsp_references<cr>", {});
vim.keymap.set("n", "<leader>ft", ":TodoTelescope<cr>", {});
vim.keymap.set("n", "<leader>fn", ":Telescope notify<cr>", {});
