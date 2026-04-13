vim.pack.add { 'https://github.com/ellisonleao/gruvbox.nvim' }
vim.pack.add { 'https://github.com/bjarneo/aether.nvim' }

require('gruvbox').setup {}
vim.cmd.colorscheme 'gruvbox'

require('aether').setup {}
-- vim.cmd.colorscheme 'aether'
-- require('aether.hotreload').setup()
