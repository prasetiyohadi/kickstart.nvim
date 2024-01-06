local b = vim.b

b['ale_fix_on_save'] = 1
b['ale_fixers'] = { 'prettier' }
b['ale_linters'] = { 'yamllint' }

vim.api.nvim_command [[
  augroup vimrc-yaml
    autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab indentkeys-=0# indentkeys-=<:>
  augroup END
]]
