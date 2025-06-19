return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon').setup()
    end,
    keys = {
      {
        '<leader>a',
        function()
          require('harpoon.mark').add_file()
        end,
        desc = 'harpoon add file',
      },
      {
        '<C-e>',
        function()
          require('harpoon.ui').toggle_quick_menu()
        end,
        desc = 'harpoon quick menu',
      },
      {
        '<C-1>',
        function()
          require('harpoon.ui').nav_file(1)
        end,
        desc = 'harpoon to file 1',
      },
      {
        '<C-2>',
        function()
          require('harpoon.ui').nav_file(2)
        end,
        desc = 'harpoon to file 2',
      },
      {
        '<C-3>',
        function()
          require('harpoon.ui').nav_file(3)
        end,
        desc = 'harpoon to file 3',
      },
      {
        '<C-4>',
        function()
          require('harpoon.ui').nav_file(4)
        end,
        desc = 'harpoon to file 4',
      },
      {
        '<C-5>',
        function()
          require('harpoon.ui').nav_file(5)
        end,
        desc = 'harpoon to file 5',
      },
      {
        '<PageUp>',
        function()
          require('harpoon.ui').nav_prev()
        end,
        desc = 'harpoon to previos file',
      },
      {
        '<PageDown>',
        function()
          require('harpoon.ui').nav_next()
        end,
        desc = 'harpoon to next file',
      },
    },
  },
}
