return {
  'f-person/git-blame.nvim',
  event = { 'BufReadPre' },
  init = function()
    vim.g.gitblame_enabled = 0
  end,
  config = function()
    require('gitblame').setup {
      enabled = false,
    }
  end,
}
