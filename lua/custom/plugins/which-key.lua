-- File: lua/custom/plugins/which-key.lua

local o = vim.o

return {
  'folke/which-key.nvim',
  config = function()
    o.timeout = true
    o.timeoutlen = 500
    require('which-key').setup {}
  end,
}
