local km = vim.keymap

km.set('n', '<c-s>', ':w<cr>')
km.set('n', '<c-q>', ':q!<cr>')
km.set('n', '<c-/>', ':vsplit<cr>')

-- UndoTree
km.set('n', '<leader>u', vim.cmd.UndotreeToggle)