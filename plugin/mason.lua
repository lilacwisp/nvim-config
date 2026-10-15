local mason = require 'mason'
local mason_lsp = require 'mason-lspconfig'

-- catch errors gracefully
U.check_module 'user.vim.pack'

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
