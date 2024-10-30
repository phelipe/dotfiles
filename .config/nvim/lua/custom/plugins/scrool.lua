return {
  'karb94/neoscroll.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('neoscroll').setup {
      mappings = { '<C-u>', '<C-d>' },
    }
  end,
}
