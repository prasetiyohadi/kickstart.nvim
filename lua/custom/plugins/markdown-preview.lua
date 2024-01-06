-- File: lua/custom/plugins/markdown-preview.lua

return {
  'iamcco/markdown-preview.nvim',
  build = 'cd app && yarn install',
  cmd = 'MarkdownPreview',
  ft = { 'markdown', 'vimwiki' },
}
