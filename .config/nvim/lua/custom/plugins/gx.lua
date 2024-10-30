-- plugin for open browser links with gx
return {
  'chrishrb/gx.nvim',
  -- event = { 'BufEnter' },
  event = { 'BufReadPre', 'BufNewFile' },
  keys = { { 'gx', '<cmd>Browse<cr>', mode = { 'n', 'x' } } },
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = true, -- default settings
}
