return {
  'goolord/alpha-nvim',
  -- enabled = false,
  priority = 2000,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'

    Art = {
      [[███╗  ██╗ ███████╗  █████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
      [[████╗ ██║ ██╔════╝ ██╔══██╗ ██║   ██║ ██║ ████╗ ████║]],
      [[██╔██╗██║ █████╗   ██║  ██║ ╚██╗ ██╔╝ ██║ ██╔████╔██║]],
      [[██║╚████║ ██╔══╝   ██║  ██║  ╚████╔╝  ██║ ██║╚██╔╝██║]],
      [[██║ ╚███║ ███████╗ ╚█████╔╝   ╚██╔╝   ██║ ██║ ╚═╝ ██║]],
      [[╚═╝  ╚══╝ ╚══════╝  ╚════╝     ╚═╝    ╚═╝ ╚═╝     ╚═╝]],
    }

    -- Set header
    dashboard.section.header.val = Art
    require('alpha').setup(dashboard.opts)
  end,
}
