-- File: lua/custom/plugins/friendly-snippets.lua

return {
  'rafamadriz/friendly-snippets',
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load { paths = '~/.local/share/nvim/lazy/friendly-snippets' }
  end,
}
