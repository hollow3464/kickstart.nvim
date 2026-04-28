local vue = require 'plugins.lsp.servers.vue'

return {
  hyprls = {},
  gopls = {},
  templ = {},
  markdown_oxide = {},
  cssls = {},
  ruff = {},
  ty = {},
  dockerls = {},
  jinja_lsp = {},
  taplo = {},
  bashls = {},
  biome = {},
  jsonls = {},
  yamlls = {},
  html = { filetypes = { 'html', 'twig', 'jinja', 'blade', 'php' } },
  lua_ls = {
    settings = {
      Lua = { completion = { callSnippet = 'Replace' } },
    },
  },
  twiggy_language_server = require 'plugins.lsp.servers.twiggy',
  emmet_language_server = require 'plugins.lsp.servers.emmet',
  tailwindcss = require 'plugins.lsp.servers.tailwind',
  ts_ls = vue.ts_ls,
  -- vtsls = vue.vtsls,
  vue_ls = vue.vue_ls,
}
