return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  keys = {
    { '<leader><leader>', '<cmd>lua require("fzf-lua").buffers()<cr>', desc = 'Search Buffers' },
    { '<leader>sf', '<cmd>lua require("fzf-lua").files()<cr>', desc = 'Search Files' },
    { '<leader>sg', '<cmd>lua require("fzf-lua").grep_project()<cr>', desc = 'Search in Files with Grep' },
    -- LSP
    { 'gr', '<cmd>lua require("fzf-lua").lsp_references()<cr>', desc = '[G]oto [R]eferences' },
    { 'gd', '<cmd>lua require("fzf-lua").lsp_definitions()<cr>', desc = 'G]oto [D]efinitions' },
    { 'gI', '<cmd>lua require("fzf-lua").lsp_implementations()<cr>', desc = '[G]oto [I]mplementation' },
    { '<leader>ds', '<cmd>lua require("fzf-lua").lsp_document_symbols()<cr>', desc = '[D]ocument [S]ymbols' },
    { 'ws', '<cmd>lua require("fzf-lua").lsp_workspace_symbols()<cr>', desc = '[W]orkspace [S]ymbols' },
    { '<leader>sD', '<cmd>lua require("fzf-lua").lsp_document_diagnostics()<cr>', desc = '[s]earch [d]iagnostics in file' },
    { '<leader>sd', '<cmd>lua require("fzf-lua").lsp_workspace_diagnostics()<cr>', desc = '[s]earch [d]iagnostics in workspace' },
  },
}
