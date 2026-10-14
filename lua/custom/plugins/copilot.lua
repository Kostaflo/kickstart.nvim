vim.g.copilot_no_tab_map = true

vim.pack.add {
  'https://github.com/github/copilot.vim',
}

vim.keymap.set('i', '<C-y>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})

vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-x>', '<Plug>(copilot-dismiss)')
