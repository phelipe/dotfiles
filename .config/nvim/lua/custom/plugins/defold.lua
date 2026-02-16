return {
  'atomicptr/defold.nvim',
  lazy = false,
  -- enabled = false,

  -- (Optional) Required when using the debugger
  dependencies = {
    'mfussenegger/nvim-dap',
  },

  opts = {
    defold = {
      -- Automatically set defold.nvim as the default editor in Defold (default: true)
      set_default_editor = true,

      -- Automatically fetch dependencies on launch (default: true)
      auto_fetch_dependencies = true,

      -- Enable hot reloading when saving scripts in Neovim (default: true)
      hot_reload_enabled = true,
    },
    -- config options, see below
    launcher = {
      -- How to run neovim "neovide" or "terminal" (default: neovide)
      type = 'terminal',

      -- path to your neovim or terminal executable (optional)
      executable = nil,

      -- extra arguments passed to the `executable` (or neovide)
      extra_arguments = nil,

      -- configure how the terminal is run (optional)
    },
  },
}
