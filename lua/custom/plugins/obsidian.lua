return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'qtnbd2',
        path = '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/qtnbd2',
      },
    },
  },
}
