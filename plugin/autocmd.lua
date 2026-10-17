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
    local lsp_mappings = {
      {   'n',        'gd',    vim.lsp.buf.definition,      '' },
      {   'n',        'gD',    vim.lsp.buf.declaration,     '' },
      {   'n',        'gi',    vim.lsp.buf.implementation,  '' },
      {   'n',        'grr',   vim.lsp.buf.references,      '' },
      {   'n',        'grt',   vim.lsp.buf.type_definition, '' },
      {   'n',        'K',     vim.lsp.buf.hover,           '' },
      {   'n',        '<c-s>', vim.lsp.buf.signature_help,  '' },
      {   'n',        'crn',   vim.lsp.buf.rename,          '' },
      {   'n',        'vd',    vim.diagnostic.open_float,   '' },
      { { 'n', 'x' }, 'gra',   vim.lsp.buf.code_action,     '' },

      {   'n',        '<leader>ds', function () MiniExtra.pickers.lsp { scope = 'document_symbol' } end, '' },
      {   'n',        '<leader>ws', function () MiniExtra.pickers.lsp { scope = 'workspace_symbol_live' } end, '' },
    }

    for _, map in ipairs (lsp_mappings) do
      local mode, lhs, rhs, description = map [1], map [2], map [3], map [4]
      vim.keymap.set (mode, lhs, rhs, vim.tbl_extend ('force', opts, { desc = description }))
    end
  end
})
