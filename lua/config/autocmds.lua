vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Open binary files
vim.api.nvim_create_autocmd('BufReadCmd', {
  pattern = '*.pdf',
  callback = function()
    local filename = vim.fn.shellescape(vim.api.nvim_buf_get_name(0))
    vim.cmd('silent !org.kde.okular ' .. filename .. ' &')
    vim.cmd 'let tobedeleted = bufnr(\'%\') | b# | exe "bd! " . tobedeleted'
  end,
})

vim.api.nvim_create_autocmd('BufReadCmd', {
  pattern = { '*.png', '*.jpg', '*.jpeg', '*.gif', '*.webp' },
  callback = function()
    local filename = vim.fn.shellescape(vim.api.nvim_buf_get_name(0))
    vim.cmd('silent !imv ' .. filename .. ' &')
    vim.cmd 'let tobedeleted = bufnr(\'%\') | b# | exe "bd! " . tobedeleted'
  end,
})
