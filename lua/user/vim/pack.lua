-- packages
local function gh(x) return 'https://github.com/' .. x end

vim.pack.add {
  gh 'nvim-mini/mini.nvim',
  gh 'nyoom-engineering/oxocarbon.nvim',
  gh 'L3MON4D3/LuaSnip',
  gh 'nvim-treesitter/nvim-treesitter',
  gh 'neovim/nvim-lspconfig',
  gh 'mason-org/mason.nvim',
  gh 'mason-org/mason-lspconfig.nvim'
}
