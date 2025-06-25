-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'github/copilot.vim' },
  {
    'christoomey/vim-tmux-navigator',
    vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>'),
    vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>'),
    vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>'),
    vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>'),
  },
  {
    'vim-test/vim-test',
    dependencies = {
      'preservim/vimux',
    },
    vim.keymap.set('n', '<leader>t', ':TestNearest<CR>', {}),
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>', {}),
    vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', {}),
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>', {}),
    vim.keymap.set('n', '<leader>g', ':TestVisit<CR>', {}),
    vim.cmd "let test#strategy = 'vimux'",
  },
}
