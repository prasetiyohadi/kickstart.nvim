-- File: lua/custom/plugins/sniprun.lua

local set_keymap = vim.api.nvim_set_keymap

return {
  'michaelb/sniprun',
  build = 'bash ./install.sh',
  dependencies = {
    'rcarriga/nvim-notify',
  },
  config = function()
    -- Mappings
    set_keymap('v', 'f', '<Plug>SnipRun', { silent = true })
    set_keymap('n', '<leader>f', '<Plug>SnipRunOperator', { silent = true })
    set_keymap('n', '<leader>ff', '<Plug>SnipRun', { silent = true })
    -- Config
    require('sniprun').setup {
      display = { 'NvimNotify' },
    }
  end,
}
