-- File: lua/custom/plugins/orgmode.lua

return {
  'nvim-orgmode/orgmode',
  config = function()
    require('orgmode').setup_ts_grammar()
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' },
      },
      ensure_installed = { 'org' },
    }
    require('orgmode').setup {
      org_agenda_files = { '~/org/repos.org', '~/org/agenda/file/*.org' },
      org_default_notes_file = '~/org/default/capture/file.org',
      org_archive_location = '~/org/default/archive/file.org_archive',
      org_capture_templates = {
        r = {
          description = 'Repo',
          template = "* [[%x][%(return string.match('%x', '([^/]+)$'))]]%?",
          target = '~/org/repos.org',
        },
      },
    }
  end,
}
