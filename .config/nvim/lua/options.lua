vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.clipboard = "unnamedplus"

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = "yes"

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.o.updatetime = 300

vim.o.termguicolors = true

vim.o.mouse = 'a'

vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Cs = "\e[4:0m]"]])
vim.o.pumblend = 0
vim.o.winblend = 0
