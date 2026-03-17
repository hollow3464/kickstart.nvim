local formatters = {
  lua = { 'stylua' },
  -- Conform can also run multiple formatters sequentially
  -- python = { "isort", "black" },
  --
  -- You can use 'stop_after_first' to run the first available formatter from the list
  -- javascript = { "prettierd", "prettier", stop_after_first = true },
  xml = { 'xmlformatter' },
  html = { 'djlint', 'rustywind' },
  twig = { 'djlint', 'rustywind' },
  jinja = { 'djlint' },
  vue = { 'rustywind', 'prettierd' },
  typescript = { 'prettierd' },
  javascript = { 'prettierd' },
  javascriptreact = { 'rustywind', 'prettierd' },
  typescriptreact = { 'rustywind', 'prettierd' },
  json = { 'prettierd' },
  jsonc = { 'prettierd' },
  toml = { 'taplo' },
  php = { 'rustywind', 'mago' },
  blade = { 'rustywind', 'blade-formatter', 'mago' },
  hcl = { 'hclfmt' },
  sql = { 'sqlfmt' },
  yaml = { 'prettierd' },
}
return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true, blade = true, twig = true, html = true, php = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 1000,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters = {
      mago = {
        command = 'mago',
        args = { 'format', '-i' },
      },
    },
    formatters_by_ft = formatters,
  },
}
