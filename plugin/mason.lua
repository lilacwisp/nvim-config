local mason = require 'mason'
local mason_lsp = require 'mason-lspconfig'

mason.setup {}

mason_lsp.setup {
  ensure_installed = {
    'lua_ls',
    'tinymist'
  },
  automatic_enable = {
    exclude = {
      'lua_ls'
    }
  }
}
