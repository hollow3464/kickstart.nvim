local vue = require 'lsp.vue'
return {
  -- clangd = {},
  -- pyright = {},
  basedpyright = {},
  -- rust_analyzer = {},
  gopls = {},
  templ = {},
  intelephense = {
    filetypes = { 'php', 'php_only', 'blade' },
  },
  markdown_oxide = {},
  -- cssls = {},
  ruff = {},
  -- ty = {},
  dockerls = {},
  jinja_lsp = {},
  taplo = {},
  bashls = {},
  biome = {},
  jsonls = {},
  html = {
    filetypes = { 'html', 'twig', 'jinja', 'blade' },
  },
  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
  vtsls = vue.vtsls,
  vue_ls = vue.vue_ls,
  twiggy_language_server = require 'lsp.twiggy',
  emmet_language_server = require 'lsp.emmet',
  tailwindcss = require 'lsp.tailwind',
}
