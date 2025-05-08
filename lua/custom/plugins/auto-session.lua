return {
  'rmagatti/auto-session',
  lazy = false,
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>wr', '<cmd>SessionSearch<CR>', desc = 'Session search' },
    { '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
    { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
  },

  ---@module 'auto-session'
  ---@type AutoSession.Config
  opts = {
    lazy_support = true,
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    pre_save_cmds = { 'Neotree close' },
    post_restore_cmds = { 'Neotree filesystem show' },
  },
}
