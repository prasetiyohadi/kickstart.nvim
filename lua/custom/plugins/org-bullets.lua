-- File: lua/custom/plugins/org-bullets.lua

return {
  'akinsho/org-bullets.nvim',
  dependencies = {
    'nvim-orgmode/orgmode',
  },
  config = function()
    require('org-bullets').setup {
      concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
      symbols = {
        -- list symbol
        list = '•',
        -- headlines can be a list
        headlines = { '◉', '○', '✸', '✿' },
      },
    }
  end,
}
