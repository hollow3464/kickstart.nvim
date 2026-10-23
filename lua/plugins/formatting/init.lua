vim.pack.add { 'https://github.com/stevearc/conform.nvim' }

local custom_formatters = {
  ludtwig = {
    command = 'ludtwig',
    args = { '--fix', '$FILENAME' },
  },
  cmake_format = {
    command = 'cmake-format',
    args = {},
  },
}

local formatters = {
  lua = { 'stylua' },
  -- Conform can also run multiple formatters sequentially
  python = { 'ruff' },
  --
  -- You can use 'stop_after_first' to run the first available formatter from the list
  -- javascript = { "oxfmt", "prettier", stop_after_first = true },
  markdown = { 'markdownlint' },
  xml = { 'xmlformatter' },
  html = { 'djlint', 'rustywind' },
  twig = { 'djlint', 'rustywind' },
  jinja = { 'djlint' },
  vue = { 'rustywind', 'oxfmt' },
  typescript = { 'oxfmt' },
  javascript = { 'oxfmt' },
  javascriptreact = { 'rustywind', 'oxfmt' },
  typescriptreact = { 'rustywind', 'oxfmt' },
  json = { 'oxfmt' },
  jsonc = { 'oxfmt' },
  toml = { 'taplo' },
  php = { 'rustywind', 'mago' },
  blade = { 'blade-formatter', 'mago', 'rustywind' },
  hcl = { 'hclfmt' },
  sql = { 'sqlfmt' },
  yaml = { 'oxfmt' },
  typst = { 'typstyle' },
  cpp = { 'clang-format' },
  cmake = { 'cmake_format' },
}

local opts = {
  notify_on_error = false,
  format_on_save = function(bufnr)
    -- Disable "format_on_save lsp_fallback" for languages that don't
    -- have a well standardized coding style. You can add additional
    -- languages here or re-enable it for the disabled ones.
    local disable_filetypes = { c = true, cpp = true, blade = true, twig = true, html = true, php = true }

    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    end

    return { timeout_ms = 1000, lsp_format = 'fallback' }
  end,
  formatters = custom_formatters,
  formatters_by_ft = formatters,
}

require('conform').setup(opts)

vim.keymap.set('n', '<leader>f', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = '[F]ormat buffer' })
