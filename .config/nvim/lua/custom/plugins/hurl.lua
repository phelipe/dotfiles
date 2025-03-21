return {
  'jellydn/hurl.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    -- 'nvim-lua/plenary.nvim',
    -- 'nvim-treesitter/nvim-treesitter',
    -- {
    --   'MeanderingProgrammer/render-markdown.nvim',
    --   opts = {
    --     file_types = { 'markdown' },
    --   },
    --   ft = { 'markdown' },
    -- },
  },
  ft = 'hurl',
  opts = {
    -- Show debugging info
    debug = true,
    -- Show notification on run
    show_notification = false,
    -- Show response in popup or split
    mode = 'split',
    -- Default formatter
    formatters = {
      json = { 'jq' }, -- Make sure you have install jq in your system, e.g: brew install jq
      html = {
        'prettier', -- Make sure you have install prettier in your system, e.g: npm install -g prettier
        '--parser',
        'html',
      },
    },
  },
  keys = {
    -- Run API request
    { '<leader>a', '<cmd>HurlRunnerAt<CR>', desc = 'Run Api request' },
    -- Run Hurl request in visual mode
    { '<leader>h', ':HurlRunner<CR>', desc = 'Hurl Runner', mode = 'v' },
  },
}
