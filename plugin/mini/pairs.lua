local minipairs = require 'mini.pairs'

-- catch errors gracefully
U.check_module 'user.vim.pack'

-- defaults are assumed
minipairs.setup {
  modes = {
    command = true,
    terminal = true
  }
}
