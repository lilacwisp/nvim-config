vim.api.nvim_create_autocmd ('FileType', {
  pattern = { 'bib', 'lua', 'tex', 'typst' },
  callback = function () vim.treesitter.start () end
})

vim.api.nvim_create_autocmd ('VimEnter', {
  once = true,
  callback = function ()
    vim.lsp.enable 'lua_ls'
  end
})
