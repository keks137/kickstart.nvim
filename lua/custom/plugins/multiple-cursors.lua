return {
  'brenton-leighton/multiple-cursors.nvim',
  version = '*', -- Use the latest tagged version
  opts = {}, -- This causes the plugin setup function to be called
  keys = {
    { '<C-j>', '<Cmd>MultipleCursorsAddDown<CR>', mode = { 'n', 'x' }, desc = 'Add cursor and move down' },
    { '<C-k>', '<Cmd>MultipleCursorsAddUp<CR>', mode = { 'n', 'x' }, desc = 'Add cursor and move up' },

    { '<C-Up>', '<Cmd>MultipleCursorsAddUp<CR>', mode = { 'n', 'i', 'x' }, desc = 'Add cursor and move up' },
    { '<C-Down>', '<Cmd>MultipleCursorsAddDown<CR>', mode = { 'n', 'i', 'x' }, desc = 'Add cursor and move down' },

    { '<C-LeftMouse>', '<Cmd>MultipleCursorsMouseAddDelete<CR>', mode = { 'n', 'i' }, desc = 'Add or remove cursor' },

    { '<Leader>M', '<Cmd>MultipleCursorsAddVisualArea<CR>', mode = { 'x' }, desc = 'Add cursors to the lines of the visual area' },

    { '<Leader>m', '<Cmd>MultipleCursorsAddMatches<CR>', mode = { 'n', 'x' }, desc = 'Add cursors to cword' },
    --{ '<Leader>A', '<Cmd>MultipleCursorsAddMatchesV<CR>', mode = { 'n', 'x' }, desc = 'Add cursors to cword in previous area' },

    { '<Leader>d', '<Cmd>MultipleCursorsAddJumpNextMatch<CR>', mode = { 'n', 'x' }, desc = 'Add cursor and jump to next cword' },
    { '<Leader>D', '<Cmd>MultipleCursorsJumpNextMatch<CR>', mode = { 'n', 'x' }, desc = 'Jump to next cword' },

    { '<Leader>l', '<Cmd>MultipleCursorsLock<CR>', mode = { 'n', 'x' }, desc = 'Lock virtual cursors' },
  },
  config = function(_, opts)
    require('multiple-cursors').setup(opts)

    -- Your original spider config remains unchanged
    require('spider').setup {
      skipInsignificantPunctuation = false,
      consistentOperatorPending = false,
      subwordMovement = true,
      customPatterns = {},
    }
  end,
  custom_key_maps = {
    -- w
    {
      { 'n', 'x' },
      'w',
      function(_, count)
        if count ~= 0 and vim.api.nvim_get_mode().mode == 'n' then
          vim.cmd('normal! ' .. count)
        end
        require('spider').motion 'w'
      end,
    },

    -- e
    {
      { 'n', 'x' },
      'e',
      function(_, count)
        if count ~= 0 and vim.api.nvim_get_mode().mode == 'n' then
          vim.cmd('normal! ' .. count)
        end
        require('spider').motion 'e'
      end,
    },

    -- b
    {
      { 'n', 'x' },
      'b',
      function(_, count)
        if count ~= 0 and vim.api.nvim_get_mode().mode == 'n' then
          vim.cmd('normal! ' .. count)
        end
        require('spider').motion 'b'
      end,
    },
  },
  dependencies = { 'chrisgrieser/nvim-spider' },
  --[[
  custom_key_maps = {
    -- Override 'w' with spider motion
    {
      { 'n', 'x' },
      'w',
      function(_, count)
        local cnt = (count == 0) and 1 or count
        for _ = 1, cnt do
          require('spider').motion 'w'
        end
      end,
    },

    -- Override 'e' with spider motion
    {
      { 'n', 'x' },
      'e',
      function(_, count)
        local cnt = (count == 0) and 1 or count
        for _ = 1, cnt do
          require('spider').motion 'e'
        end
      end,
    },

    -- Override 'b' with spider motion
    {
      { 'n', 'x' },
      'b',
      function(_, count)
        local cnt = (count == 0) and 1 or count
        for _ = 1, cnt do
          require('spider').motion 'b'
        end
      end,
    },
  },
  ]]
}
