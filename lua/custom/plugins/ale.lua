-- File: lua/custom/plugins/ale.lua

local g = vim.g

return {
  'dense-analysis/ale',
  ft = {
    'sh',
    'zsh',
    'bash',
    'c',
    'cpp',
    'cmake',
    'html',
    'markdown',
    'racket',
    'vim',
    'tex',
    'yaml',
    'dockerfile',
    'terraform',
    'lua',
    'go',
    'json',
    'typescript',
    'python',
  },
  cmd = 'ALEEnable',
  config = function()
    g['ale_echo_msg_format'] = '[%severity%][%linter%] %s'
    g['ale_fix_on_save'] = 1
    g['ale_fixers'] = { ['*'] = { 'remove_trailing_lines', 'trim_whitespace' } }
    g['ale_lint_on_text_changed'] = 'normal'
    g['ale_linters_explicit'] = 1
    g['ale_sign_error'] = '✘'
    g['ale_sign_warning'] = '⚠'
    g['ale_yaml_ls_config'] = {
      customTags = { '!reference sequence', '!vault' },
    }
  end,
}
