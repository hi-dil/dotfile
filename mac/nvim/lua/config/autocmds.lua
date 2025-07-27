-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function set_laravel_tabstop()
  -- check if artisan file exists in the root of the project
  local artisan_path = vim.fn.getcwd() .. "/artisan"
  if vim.fn.filereadable(artisan_path) == 1 then
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
  end
end

vim.api.nvim_create_augroup("laravel_project_settings", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  group = "laravel_project_settings",
  pattern = "*",
  callback = set_laravel_tabstop,
})
