local U = {}

function U.check_module (module_name)
  local ok, _ = pcall (require, module_name)
  if not ok then
    vim.notify ("module " .. module_name .. " has an error", vim.log.levels.WARN)
    return
  end
end

function U.map (mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set (mode, lhs, rhs, options)
end

return U
