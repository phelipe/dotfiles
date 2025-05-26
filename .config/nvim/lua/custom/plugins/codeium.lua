-- Existe uma referência ao nome codeium no arquivo init.lua, caso remova esse plugin lembrar de remover lá também
return {
  'Exafunction/windsurf.vim',
  enabled = false,
  event = 'BufEnter',
  init = function()
    vim.g.codeium_disable_bindings = 1
    vim.g.codeium_filetypes = {
      markdown = false,
      tex = false,
      svn = false,
      cvs = false,
    }
  end,
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true, desc = 'Codeium Accept' })
    vim.keymap.set('i', '<C-]>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true, desc = 'Codeium Cycle Completions +' })
    vim.keymap.set('i', '<c-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true, desc = 'Codeium Clear' })
  end,
}
