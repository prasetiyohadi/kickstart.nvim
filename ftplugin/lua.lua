local b = vim.b

b['ale_fixers'] = { 'stylua' }
b['ale_linters'] = { 'luacheck' }

vim.api.nvim_command [[
  augroup vimrc-lua
    autocmd FileType lua setlocal tabstop=4 softtabstop=4 shiftwidth=2 noexpandtab
  augroup END
]]
