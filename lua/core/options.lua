vim.g.mapleader = ' '
local o = vim.opt

o.ignorecase = true
o.tabstop = 4
o.expandtab=true
o.smartindent=true
o.syntax="ON"
o.autoindent=true
o.breakindent = true
o.shiftwidth = 4
o.relativenumber = true
o.mouse = 'a'
o.cursorline=true
o.backspace = "start,eol,indent"
vim.opt.termguicolors=true
vim.cmd('set encoding=utf-8')
vim.o.hidden = true
vim.opt.splitright = true
