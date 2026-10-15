vim.g.mapleader = ' '
vim.g.maplocalleader = ','

_G.U = require 'user.utils'
pcall (require, 'user.vim')

vim.cmd.colorscheme 'oxocarbon'
