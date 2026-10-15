vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function ()
    vim.lsp.enable 'lua_ls'
  end
})
