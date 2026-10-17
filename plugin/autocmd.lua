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
    vim.keymap.set ('n', 'gd', vim.lsp.buf.definition, vim.tbl_extend ('force', opts, { desc = 'definition' }))
    vim.keymap.set ('n', 'gD', vim.lsp.buf.declaration, vim.tbl_extend ('force', opts, { desc = 'declaration' }))
    vim.keymap.set ('n', 'gi', vim.lsp.buf.implementation, vim.tbl_extend ('force', opts, { desc = 'implementation' }))
    vim.keymap.set ('n', 'grr', vim.lsp.buf.references, vim.tbl_extend ('force', opts, { desc = 'references' }))
    vim.keymap.set ('n', 'grt', vim.lsp.buf.type_definition, vim.tbl_extend ('force', opts, { desc = 'type_definition' }))
    vim.keymap.set ('n', 'K', vim.lsp.buf.hover, vim.tbl_extend ('force', opts, { desc = 'hover' }))
    vim.keymap.set ('n', '<c-s>', vim.lsp.buf.signature_help, vim.tbl_extend ('force', opts, { desc = 'signature_help' }))
    vim.keymap.set ('n', 'crn', vim.lsp.buf.rename, vim.tbl_extend ('force', opts, { desc = 'rename' }))
    vim.keymap.set ({'n', 'x'}, 'gra', vim.lsp.buf.code_action, vim.tbl_extend ('force', opts, { desc = 'code_action' }))
    vim.keymap.set ('n', 'vd', vim.diagnostic.open_float, vim.tbl_extend ('force', opts, { desc = 'open_float' }))
    vim.keymap.set ('n', '<leader>ds', function () MiniExtra.pickers.lsp { scope = 'document_symbol' } end, opts)
    vim.keymap.set ('n', '<leader>ws', function () MiniExtra.pickers.lsp { scope = 'workspace_symbol_live' } end, opts)
  end
})
