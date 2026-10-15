vim.g.mapleader = ' '
vim.g.maplocalleader = ','

_G.U = require 'user.utils'

pcall(require, 'user.vim')

-- catch errors gracefully
U.check_module 'user.vim.pack'

-- add code from any vim.pack plugin right here
vim.cmd.colorscheme 'oxocarbon'
