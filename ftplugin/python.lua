local b = vim.b

b['ale_fixers'] = { 'black' }
b['ale_linters'] = { 'pylint' }

vim.api.nvim_command [[
  augroup vimrc-python
    autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79 formatoptions+=croq softtabstop=4 |
      setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
  augroup END
]]
