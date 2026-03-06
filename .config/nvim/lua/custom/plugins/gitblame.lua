return {
  'f-person/git-blame.nvim',
  event = { 'BufReadPre' },
  init = function()
    vim.g.gitblame_enabled = 0
    vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<cr>', { desc = 'Git Blame toggle' })
  end,
  -- config = function()
  --   require('gitblame').setup {
  --     enabled = false,
  --   }
  -- end,
}
