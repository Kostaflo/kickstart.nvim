
-- Run the plugin's update command when it is installed or updated.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(event)
    local spec = event.data.spec
    local kind = event.data.kind

    if spec.name ~= 'typst-preview.nvim' then return end
    if kind ~= 'install' and kind ~= 'update' then return end

    vim.schedule(function()
      local ok, typst_preview = pcall(require, 'typst-preview')
      if ok and typst_preview.update then typst_preview.update() end
    end)
  end,
})

vim.pack.add {
  {
    src = 'https://github.com/chomosuke/typst-preview.nvim',
    version = vim.version.range '1.*',
  },
}

require('typst-preview').setup {
  open_cmd = 'firefox %s',
}
