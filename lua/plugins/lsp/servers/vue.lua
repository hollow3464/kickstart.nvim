local vue_language_server_path = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server'

local tsgo_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' }
local tsserver_filetypes = { 'vue' }

local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}

local ts_ls_config = {
  init_options = {
    plugins = {
      vue_plugin,
    },
  },
  filetypes = tsserver_filetypes,
}

local tsgo_config = {
  filetypes = tsgo_filetypes,
}

return {
  tsgo = tsgo_config,
  ts_ls = ts_ls_config,
  vue_ls = {},
}
