-- File: lua/custom/plugins/nvim-notify.lua

return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup {
      display_options = {
        notification_timeout = 5,
      },
    }
  end,
}
