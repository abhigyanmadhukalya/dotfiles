vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.o.clipboard = "unnamedplus"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = "yes"
vim.opt.ignorecase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300
vim.o.termguicolors = true
vim.o.mouse = ""

vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Cs = "\e[4:0m]"]])

vim.o.pumblend = 0
vim.o.winblend = 0
vim.o.undofile = true
