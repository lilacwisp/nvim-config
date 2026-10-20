local basics = require 'mini.basics'

basics.setup {
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
