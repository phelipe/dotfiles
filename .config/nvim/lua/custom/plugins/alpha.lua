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

    Hydra = {
      [[                                   ]],
      [[                                   ]],
      [[                                   ]],
      [[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]],
      [[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]],
      [[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]],
      [[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]],
      [[          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]],
      [[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]],
      [[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]],
      [[ ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]],
      [[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ]],
      [[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]],
      [[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]],
      [[                                   ]],
    }
    local function footer()
      local total_plugins = #require('lazy').plugins()
      local datetime = os.date ' %d-%m-%Y   %H:%M:%S'
      local version = vim.version()
      local nvim_version_info = '   v' .. version.major .. '.' .. version.minor .. '.' .. version.patch

      -- return datetime .. '   ' .. total_plugins .. ' plugins' .. nvim_version_info
      return datetime .. nvim_version_info
    end

    dashboard.section.header.val = Hydra
    dashboard.section.buttons.val = {}
    dashboard.section.footer.val = footer()
    dashboard.section.footer.opts.hl = 'Constant'
    require('alpha').setup(dashboard.opts)
  end,
}
