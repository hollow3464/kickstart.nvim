vim.pack.add {
  'https://github.com/charlespascoe/vim-go-syntax',
  'https://github.com/lowitea/aw-watcher.nvim',
  'https://github.com/NMAC427/guess-indent.nvim',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/folke/lazydev.nvim',
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/echasnovski/mini.icons',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/mbbill/undotree',
  'https://github.com/tpope/vim-dadbod',
  'https://github.com/kristijanhusak/vim-dadbod-completion',
  'https://github.com/kristijanhusak/vim-dadbod-ui',
  'https://github.com/xiyaowong/transparent.nvim',
  'https://github.com/selimacerbas/live-server.nvim',
  'https://github.com/selimacerbas/markdown-preview.nvim',
  'https://github.com/chomosuke/typst-preview.nvim',

  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-neotest/nvim-nio',

  'https://github.com/adalessa/laravel.nvim',
  'https://github.com/numToStr/Comment.nvim',
  'https://github.com/OlegGulevskyy/better-ts-errors.nvim',
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
  signs = true,
  highlight = {
    keyword = { icon = '', cterm = 'bold' },
    todo = { icon = '', cterm = 'bold' },
    fixme = { icon = '', cterm = 'bold' },
    note = { icon = '', cterm = 'bold' },
    perf = { icon = '', cterm = 'bold' },
    error = { icon = '', cterm = 'bold' },
  },
}

require('transparent').setup {}
require('live_server').setup {}
require('markdown_preview').setup {
  -- all optional; sane defaults shown
  instance_mode = 'takeover', -- "takeover" (one tab) or "multi" (tab per instance)
  port = 0, -- 0 = auto (8421 for takeover, OS-assigned for multi)
  open_browser = true,
  default_theme = 'dark', -- "dark" or "light"; initial preview theme
  debounce_ms = 300,
}
require('typst-preview').setup {}
require('better-ts-errors').setup {}
require('Comment').setup {}
