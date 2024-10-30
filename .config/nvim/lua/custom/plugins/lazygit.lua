-- plugin for lazygit
return {
  'kdheepak/lazygit.nvim',
  -- event = { 'BufReadPre' },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'Harpoon Next Mark' })
  end,
}
