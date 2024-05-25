local map = require('cosmic.utils').map
-- Example: Additional insert mapping:
map('n', '<S-Tab>', '<cmd>BufferNext<cr>')
map('n', 'U', '<cmd>Telescope undo<cr>')
map('n', '<leader>lo', ':', { desc = 'Clear list' })
map('n', ';', ':', { desc = 'Clear list' })
map('n', '<leader>/', '<cmd>Telescope smart_open<cr>', { desc = 'Clear list' })

vim.keymap.del('n', '<leader>c')
vim.keymap.del('n', '<leader>cc')
-- Mapping options:
-- map('n', ...)
-- map('v', ...)
-- map('i', ...)
-- map('t', ...)

-- Example: Disable find files keymap
--[[ vim.keymap.del('n', '<leader>c') ]]

-- See :h vim.keymap for more info
