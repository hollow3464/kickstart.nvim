local vue = require 'plugins.lsp.servers.vue'
require 'plugins.lsp.servers.dart'

return {
  ts_ls = vue.ts_ls,
  tsgo = vue.tsgo,
  vue_ls = vue.vue_ls,
  twiggy_language_server = require 'plugins.lsp.servers.twiggy',
  emmet_language_server = require 'plugins.lsp.servers.emmet',
  tailwindcss = require 'plugins.lsp.servers.tailwind',
  atlas = {
    filetypes = {
      'atlas-config',
      'atlas-schema-mysql',
      'atlas-schema-postgresql',
      'atlas-schema-sqlite',
      'atlas-schema-clickhouse',
      'atlas-schema-mssql',
      'atlas-schema-redshift',
      'atlas-test',
      'atlas-plan',
      'atlas-rule',
    },
  },
}
