-- plugin for fast movimentation in nvim
-- return {
--   'ggandor/leap.nvim',
--   -- enabled = false,
--   -- event = { 'BufEnter' },
--   dependencies = 'tpope/vim-repeat',
--   config = function()
--     -- require('leap').setup {}
--     -- require('leap').create_default_mappings(true)
--     vim.keymap.set({ 'n' }, 'f', '<Plug>(leap-forward)')
--     vim.keymap.set({ 'n' }, 'F', '<Plug>(leap-backward)')
--   end,
-- }
return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
    {
      'S',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').treesitter()
      end,
      desc = 'Flash Treesitter',
    },
  },
}
