local minifiles = require 'mini.files'

-- catch errors gracefully
U.check_module 'user.vim.pack'

-- defaults are assumed
minifiles.setup {
  windows = {
    preview = true
  }
}
