vim.pack.add { 'https://github.com/mfussenegger/nvim-lint' }

local setup = function()
  local lint = require 'lint'

  -- lint.linters.mago_linter = require 'lint.mago-linter'
  -- lint.linters.mago_analyzer = require 'lint.mago-analyzer'

  lint.linters_by_ft = {
    markdown = { 'markdownlint' },
    php = { 'mago_lint', 'mago_analyze' },
    typescript = { 'oxlint' },
    typescriptreact = { 'oxlint' },
    javascript = { 'oxlint' },
    javascriptreact = { 'oxlint' },
    vue = { 'oxlint' },
  }

  -- Create autocommand which carries out the actual linting
  -- on the specified events.
  local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

  vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
    group = lint_augroup,
    callback = function()
      -- Only run the linter in buffers that you can modify in order to
      -- avoid superfluous noise, notably within the handy LSP pop-ups that
      -- describe the hovered symbol using Markdown.
      if vim.bo.modifiable then
        lint.try_lint()
      end
    end,
  })
end

vim.api.nvim_create_autocmd('BufReadPre', {
  callback = setup,
})

vim.api.nvim_create_autocmd('BufNewFile', {
  callback = setup,
})
