local TS = require 'nvim-treesitter'

-- catch errors gracefully
U.check_module 'user.vim.pack'

TS.install {
  'bibtex',
  'latex',
  'lua',
  'typst'
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'bib', 'lua', 'tex', 'typst' },
  callback = function() vim.treesitter.start() end
})
