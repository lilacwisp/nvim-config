return {
  workspace_required = false,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT'
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        checkThirdParty = false
      },
      telemetry = false
    }
  }
}
