vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")


vim.api.nvim_set_option("clipboard","unnamedplus")
vim.api.nvim_set_option("termguicolors", true)

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.termguicolors = true

vim.g.mapleader = " "
