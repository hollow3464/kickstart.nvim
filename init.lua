-- vim.lsp.set_log_level 'debug'
require 'config.options'
require 'config.keymaps'
require 'config.filetypes'
require 'config.autocmds'

require('vim._core.ui2').enable()

require 'plugins'

vim.cmd.colorscheme 'gruvbox'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
