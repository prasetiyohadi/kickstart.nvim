local b = vim.b

b['ale_fixers'] = { 'shfmt' }
b['ale_linters'] = { 'shellcheck' }
b['ale_sh_shfmt_options'] = '-l -i 2 -ci -sr -w'
