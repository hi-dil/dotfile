-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- Map ; to :
keymap.set({"n", "v"}, ";", ":", { desc = "Enter command mode" })


-- DAP keymaps
keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
keymap.set("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Continue" })
keymap.set("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "Step Into" })
keymap.set("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "Step Over" })
keymap.set("n", "<leader>dO", function()
  require("dap").step_out()
end, { desc = "Step Out" })
keymap.set("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Open REPL" })
keymap.set("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "Run Last" })
keymap.set("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle UI" })
keymap.set("n", "<leader>dt", function()
  require("dap").terminate()
end, { desc = "Terminate" })

-- Markview keymap
keymap.set("n", "<leader>mp", function() vim.cmd("MarkviewToggle") end, { desc = "Toggle Markview" })
