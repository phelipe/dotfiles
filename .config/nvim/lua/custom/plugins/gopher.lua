--TODO: adicionar mais atalhos aqui
--pacote para facilitar desenvolvimento com Go
return {
  'olexsmir/gopher.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  ft = 'go',
  config = function()
    -- se o plugin não encontrar o xecutável, adicione a pasta go/bin ao PATH
    require('gopher').setup {
      commands = {
        go = 'go',
        gomodifytags = 'gomodifytags',
        gotests = 'gotests',
        impl = 'impl',
        iferr = 'iferr',
      },
    }
    vim.keymap.set('n', '<leader>at', '<cmd>GoTagAdd json<cr>', { desc = 'GO -[A]dd json [T]ag' })
    vim.keymap.set('n', '<leader>ayt', '<cmd>GoTagAdd yaml<cr>', { desc = 'GO -[A]dd [Y]aml [T]ag' })
    vim.keymap.set('n', '<leader>ft', '<cmd>GoTestAdd<cr>', { desc = 'GO -[A]dd [F]unction [T]est' })
    vim.keymap.set('n', '<leader>fat', '<cmd>GoTestAll<cr>', { desc = 'GO -[A]dd [A]ll [T]est' })
    vim.keymap.set('n', '<leader>ae', '<cmd>GoIfErr<cr>', { desc = 'GO -[A]dd if [E]rror' })
    vim.keymap.set('n', '<leader>ac', '<cmd>GoCmt<cr>', { desc = 'GO -[A]dd [C]omment' })
    -- NOTE: add tags with omitempty -> "GoTagAdd json --add-options json=omitempty"
  end,
  builf = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
}
