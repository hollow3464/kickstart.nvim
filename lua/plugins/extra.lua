vim.pack.add { 'https://github.com/charlespascoe/vim-go-syntax' }
vim.pack.add { 'https://github.com/lowitea/aw-watcher.nvim' }
vim.pack.add { 'https://github.com/NMAC427/guess-indent.nvim' }
vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }
vim.pack.add { 'https://github.com/folke/lazydev.nvim' }
vim.pack.add { 'https://github.com/windwp/nvim-autopairs' }
vim.pack.add { 'https://github.com/echasnovski/mini.icons' }
vim.pack.add { 'https://github.com/stevearc/oil.nvim' }
vim.pack.add { 'https://github.com/nvim-lua/plenary.nvim' }
vim.pack.add { 'https://github.com/folke/todo-comments.nvim' }
vim.pack.add { 'https://github.com/mbbill/undotree' }
vim.pack.add {
  'https://github.com/tpope/vim-dadbod',
  'https://github.com/kristijanhusak/vim-dadbod-completion',
  'https://github.com/kristijanhusak/vim-dadbod-ui',
}

require('oil').setup {}

require('aw_watcher').setup {
  bucket = { hostname = 'warmachine' },
  aw_server = { host = '172.27.0.1', port = 5600 },
}

require('guess-indent').setup {}

require('ibl').setup {}

require('lazydev').setup {
  library = {
    -- Load luvit types when the `vim.uv` word is found
    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
  },
}

require('todo-comments').setup {
  signs = false,
  highlight = {
    keyword = { icon = '', cterm = 'bold' },
    todo = { icon = '', cterm = 'bold' },
    fixme = { icon = '', cterm = 'bold' },
    note = { icon = '', cterm = 'bold' },
    perf = { icon = '', cterm = 'bold' },
    error = { icon = '', cterm = 'bold' },
  },
}

vim.api.nvim_create_autocmd('InsertEnter', {
  desc = 'Autopairs',
  group = vim.api.nvim_create_augroup('autopairs', { clear = true }),
  callback = function()
    require('nvim-autopairs').setup {}
  end,
})

vim.keymap.set('n', '\\', ':Oil<CR>', { desc = 'Oil reveal', silent = true })
vim.keymap.set('n', '<leader>\\', ':UndotreeToggle<CR>', {
  desc = 'Undo tree reveal',
  silent = true,
})
