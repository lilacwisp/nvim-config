local ls = require 'luasnip'

ls.config.set_config {
  enable_autosnippets = true
}

require 'luasnip.loaders.from_lua' .load {}
