local b = vim.b

b['ale_linters'] = { 'golint' }
b['ale_fixers'] = { 'gofmt', 'goimports' }

vim.api.nvim_command [[
  augroup vimrc-go
    autocmd FileType go setlocal indentkeys-=0# indentkeys-=<:>
  augroup END
]]
