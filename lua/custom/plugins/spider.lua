return {
  'chrisgrieser/nvim-spider',
  lazy = true,
  config = function()
    require('spider').setup {
      skipInsignificantPunctuation = false,
      consistentOperatorPending = false, -- see "Consistent Operator-pending Mode" in the README
      subwordMovement = true,
      customPatterns = {}, -- check "Custom Movement Patterns" in the README for details
    }
  end,
  keys = {

    {
      'w',
      function()
        require('spider').motion 'w'
      end,
      desc = 'Spider-w',
      mode = { 'n', 'o', 'x' },
    },
    {
      'e',
      function()
        require('spider').motion 'e'
      end,
      desc = 'Spider-e',
      mode = { 'n', 'o', 'x' },
    },
    {
      'b',
      function()
        require('spider').motion 'b'
      end,
      desc = 'Spider-b',
      mode = { 'n', 'o', 'x' },
    },
  },
}
