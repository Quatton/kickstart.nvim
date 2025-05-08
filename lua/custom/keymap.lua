local keymap = vim.keymap

keymap.set('n', '<D-z>', 'u', { noremap = true, silent = true })
keymap.set('n', '<D-Z>', '<C-r>', { noremap = true, silent = true })
keymap.set('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

keymap.set('n', '<leader>cc', ':CopilotChat', { noremap = true, silent = true })
