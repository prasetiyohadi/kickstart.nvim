local b = vim.b

b['ale_fixers'] = { 'prettier' }
b['ale_linters'] = { 'eslint' }

vim.api.nvim_command [[
  augroup vimrc-typescript
    autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  augroup END
]]
