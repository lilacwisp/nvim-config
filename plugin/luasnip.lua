local ls = require 'luasnip'

-- catch errors gracefully
U.check_module 'user.vim.pack'

ls.config.set_config {
  enable_autosnippets = true
}

require 'luasnip.loaders.from_lua' .load {}
