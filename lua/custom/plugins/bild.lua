return {
  'keks137/bild',
  config = function()
    require('bild').setup(vim.keymap.set('n', '-', '<CMD>Bild<CR>', { desc = 'Builds' }))
  end,
}
