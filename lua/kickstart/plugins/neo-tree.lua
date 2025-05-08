-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    mappings = {
      ['\\'] = 'close_window',
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    auto_clean_after_session_restore = false,
  },
  config = function()
    vim.api.nvim_create_autocmd({ 'BufEnter' }, {
      pattern = 'NvimTree*',
      callback = function()
        local api = require 'nvim-tree.api'
        local view = require 'nvim-tree.view'

        if not view.is_visible() then
          api.tree.open()
        end
      end,
    })
  end,
}
