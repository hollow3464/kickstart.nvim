local custom = require 'plugins.lsp.custom'
local default = require 'plugins.lsp.default'

return vim.tbl_extend('force', {}, default, custom)
