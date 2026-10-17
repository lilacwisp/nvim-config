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

vim.api.nvim_create_autocmd ('LspAttach', {
  callback = function (event)
    local opts = { buffer = event.buf }
    vim.keymap.set ('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set ('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set ('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set ('n', 'grr', vim.lsp.buf.references, opts)
    vim.keymap.set ('n', 'grt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set ('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set ('n', '<c-s>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set ('n', 'crn', vim.lsp.buf.rename, opts)
    vim.keymap.set ({'n', 'x'}, 'gra', vim.lsp.buf.code_action, opts)
    vim.keymap.set ('n', 'vd', vim.diagnostic.open_float, opts)
    vim.keymap.set ('n', '<leader>ds', function () MiniExtra.pickers.lsp { scope = 'document_symbol' } end, opts)
    vim.keymap.set ('n', '<leader>ws', function () MiniExtra.pickers.lsp { scope = 'workspace_symbol_live' } end, opts)
  end
})
