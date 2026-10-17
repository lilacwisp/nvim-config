-- keymaps
U.map('n', '<localleader>fs', function () MiniFiles.open () end, { desc = 'MiniFiles.open()' })
U.map('n', '<localleader>fp', function () MiniPick.builtin.files () end, { desc = 'MiniPick.builtin.files()' })

local ls = require 'luasnip'
U.map('i', '<c-k>', function () ls.expand () end)
U.map('i', '<c-l>', function () ls.jump ( 1) end)
U.map('i', '<c-j>', function () ls.jump (-1) end)
U.map('i', '<c-e>', function ()
  if ls.choice_active () then
    ls.change_choice (1)
  end
end)

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
