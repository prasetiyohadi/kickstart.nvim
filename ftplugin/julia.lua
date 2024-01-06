vim.api.nvim_command 'autocmd FileType julia nnoremap <buffer> <c-f> :JuliaFormatterFormat<cr>'

vim.g.JuliaFormatter_options = {
  indent = 4,
  margin = 92,
  always_for_in = 0,
  whitespace_typedefs = 0,
  whitespace_ops_in_indices = 1,
}
