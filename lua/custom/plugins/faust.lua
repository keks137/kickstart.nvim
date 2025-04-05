return {
  'madskjeldgaard/faust-nvim',
  config = function()
    require 'faust-nvim'
    require('faust-nvim').load_snippets()
  end,
  dependencies = {
    'vijaymarupudi/nvim-fzf',
    'L3MON4D3/LuaSnip',
  }, --,
  -- run = require'faust-nvim'.post_install, -- Generate documentation etc (currently doesn't work it seems)
}
