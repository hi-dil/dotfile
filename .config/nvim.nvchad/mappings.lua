---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-Up>"] = {"<cmd>resize +2<cr>", "Increase window height"},
    ["<C-Down>"] = {"<cmd>resize -2<cr>", "Decrease window height"},
    ["<C-Left>"] = {"<cmd>vertical resize -2<cr>", "Increase window width"},
    ["<C-Right>"] = {"<cmd>vertical resize +2<cr>", "Decrease window width"}

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
