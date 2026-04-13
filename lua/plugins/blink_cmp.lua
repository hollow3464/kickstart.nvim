vim.pack.add { 'https://github.com/rafamadriz/friendly-snippets' }
vim.pack.add { { src = 'https://github.com/L3MON4D3/LuaSnip', name = 'LuaSnip' } }
vim.pack.add { { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range '1.*' } }

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'LuaSnip' and (kind == 'install' or kind == 'update') then
      vim.system({ 'make', 'install_jsregexp' }, { cwd = ev.data.path })
    end
  end,
})

require('luasnip.loaders.from_vscode').lazy_load()

require('blink.cmp').setup {
  keymap = { preset = 'default' },
  appearance = { nerd_font_variant = 'mono' },

  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
    menu = {
      auto_show = true,
      draw = { treesitter = { 'lsp' } },
    },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'lazydev' },
    providers = {
      lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
    },
  },

  snippets = { preset = 'luasnip' },
  signature = { enabled = true },
  fuzzy = {
    implementation = 'prefer_rust',
  },
}
