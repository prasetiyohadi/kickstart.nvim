-- File: lua/custom/plugins/floaterm.lua

local g = vim.g
local set_keymap = vim.api.nvim_set_keymap
local user_command = vim.api.nvim_create_user_command

return {
  'voldikss/vim-floaterm',
  config = function()
    g.floaterm_height = 0.33
    g.floaterm_width = 0.99
    g.floaterm_winblend = 0
    g.floaterm_wintype = 'float'
    g.floaterm_position = 'bottom'
    g.floaterm_opener = 'vsplit'
    g.floaterm_keymap_new = '<F7>'
    g.floaterm_keymap_prev = '<F8>'
    g.floaterm_keymap_next = '<F9>'
    g.floaterm_keymap_toggle = '<F12>'

    -- Floaterm mappings
    set_keymap('', '<leader>t', ':FloatermToggle<CR>', { noremap = true })
    set_keymap('c', '<leader>t', '<Esc>:FloatermToggle<CR>', { noremap = true })
    set_keymap('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true })

    -- Floaterm commands
    --
    -- Integration: Lazygit
    user_command('Lg', 'FloatermNew --wintype=float --position=center --width=0.8 --height=0.8 lazygit', {})

    -- Integration: Ripgrep
    user_command('Rg', "FloatermNew --wintype=float --position=center --width=0.8 --height=0.8 rg ''", {})

    -- Plugin: fzf-floaterm
    user_command('FTs', 'Floaterms', {})

    -- Integration: FZF (deprecated)
    -- Use junnegun/fzf.vim instead
    -- user_command('FZF', 'FloatermNew --wintype=float --position=center --width=0.8 --height=0.8 fzf', {})

    -- Integration: LF (deprecated)
    -- Use ptzz/lf.vim instead
    -- user_command('LF', 'FloatermNew --wintype=float --position=center --width=0.8 --height=0.8 lf', {})
  end,
}
