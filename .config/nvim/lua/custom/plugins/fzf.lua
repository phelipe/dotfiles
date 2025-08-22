-- PLUGIN for searchs
return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    fzf_opts = {
      ['--layout'] = 'default',
    },
    winopts = {
      preview = {
        layout = 'horizontal',
        horizontal = 'down:50%',
        scrollbar = 'float',
      },
    },
    keymap = {
      fzf = {
        ['ctrl-q'] = 'select-all+accept',
        ['ctrl-a'] = 'accept',
      },
    },
  },
  keys = {
    { '<leader><leader>', '<cmd>lua require("fzf-lua").buffers()<cr>', desc = 'Search Buffers' },
    { '<leader>sf', '<cmd>lua require("fzf-lua").files()<cr>', desc = 'Search Files' },
    { '<leader>sg', '<cmd>lua require("fzf-lua").grep_project()<cr>', desc = 'Search in Files with Grep' },
    { '<leader>sG', '<cmd>lua require("fzf-lua").grep_curbuf()<cr>', desc = 'Search in Buffer with Grep' },
    -- LSP
    { 'gr', '<cmd>lua require("fzf-lua").lsp_references()<cr>', desc = '[G]oto [R]eferences' },
    { 'gd', '<cmd>lua require("fzf-lua").lsp_definitions()<cr>', desc = 'G]oto [D]efinitions' },
    { 'gI', '<cmd>lua require("fzf-lua").lsp_implementations()<cr>', desc = '[G]oto [I]mplementation' },
    { '<leader>ss', '<cmd>lua require("fzf-lua").lsp_document_symbols()<cr>', desc = '[D]ocument [S]ymbols' },
    { '<leader>sS', '<cmd>lua require("fzf-lua").lsp_workspace_symbols()<cr>', desc = '[W]orkspace [S]ymbols' },
    { '<leader>sD', '<cmd>lua require("fzf-lua").lsp_document_diagnostics()<cr>', desc = '[s]earch [d]iagnostics in file' },
    { '<leader>sd', '<cmd>lua require("fzf-lua").lsp_workspace_diagnostics()<cr>', desc = '[s]earch [d]iagnostics in workspace' },
  },
}
