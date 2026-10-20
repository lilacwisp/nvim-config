local git = require 'mini.git'
local diff = require 'mini.diff'

git.setup {}
diff.setup {
  view = {
    style = 'sign',
    signs = { add = '+', change = '~', delete = '-' }
  }
}
