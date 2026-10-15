local minibasics = require 'mini.basics'

-- catch errors gracefully
U.check_module 'user.vim.pack'

-- defaults are assumed
minibasics.setup {
  options = {
    extra_ui = true
  },

  mappings = {
    windows = true,
    move_with_alt = true
  },

  autocommands = {
    relnum_in_visual_mode = true
  }
}
