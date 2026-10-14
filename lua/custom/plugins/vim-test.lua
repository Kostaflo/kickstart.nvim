vim.g['test#strategy'] = 'vimux'

vim.pack.add {
  'https://github.com/preservim/vimux',
  'https://github.com/vim-test/vim-test',
}

vim.keymap.set('n', '<leader>t', '<cmd>TestNearest<CR>', { desc = 'Test nearest' })
vim.keymap.set('n', '<leader>T', '<cmd>TestFile<CR>', { desc = 'Test file' })
vim.keymap.set('n', '<leader>a', '<cmd>TestSuite<CR>', { desc = 'Test suite' })
vim.keymap.set('n', '<leader>l', '<cmd>TestLast<CR>', { desc = 'Test last' })
vim.keymap.set('n', '<leader>g', '<cmd>TestVisit<CR>', { desc = 'Visit test' })
