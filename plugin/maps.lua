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
