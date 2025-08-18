return {
  'mistweaverco/kulala.nvim',
  keys = {
    {
      '<leader>rs',
      function()
        require('kulala').run()
      end,
      desc = 'Send [R]equest',
    },
    {
      '<leader>ra',
      function()
        require('kulala').run_all()
      end,
      desc = 'Send all [R]equests',
    },
    {
      '<leader>r<ESC>',
      function()
        require('kulala.ui').close_kulala_buffer()
      end,
      desc = 'Close [R]equest output',
    },
    -- { '<leader>rb', desc = 'Open scratchpad' },
  },
  ft = { 'http', 'rest' },
  opts = {
    global_keymaps = false,
    -- global_keymaps_prefix = '<leader>R',
    kulala_keymaps_prefix = '',
  },
}
