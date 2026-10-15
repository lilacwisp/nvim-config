-- native vimscript commands
vim.cmd([[

  syntax on

  colorscheme habamax

  set history=20

  set number

  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2

  set autoindent
  set smartindent

  set cursorline
  
]])

-- tweaks
vim.cmd([[

  let g:tex_flavor="latex"

]])
