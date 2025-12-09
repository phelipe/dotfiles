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
    { 'gr', '<cmd>lua require("fzf-lua").lsp_references()<cr>', desc = '[g]oto [r]eferences' },
    { 'gd', '<cmd>lua require("fzf-lua").lsp_definitions()<cr>', desc = '[g]oto [d]efinitions' },
    { 'gt', '<cmd>lua require("fzf-lua").lsp_typedefs()<cr>', desc = '[g]oto [t]ype definitions' },
    { 'gI', '<cmd>lua require("fzf-lua").lsp_implementations()<cr>', desc = '[g]oto [i]mplementation' },
    { '<leader>ss', '<cmd>lua require("fzf-lua").lsp_document_symbols()<cr>', desc = '[s]search [s]ymbols in buffer' },
    { '<leader>sS', '<cmd>lua require("fzf-lua").lsp_workspace_symbols()<cr>', desc = '[s]earch [S]ymbols in workspace' },
    { '<leader>sD', '<cmd>lua require("fzf-lua").lsp_document_diagnostics()<cr>', desc = '[s]earch [D]iagnostics in buffer' },
    { '<leader>sd', '<cmd>lua require("fzf-lua").lsp_workspace_diagnostics()<cr>', desc = '[s]earch [d]iagnostics in workspace' },
    -- GIT
    { '<leader>sc', '<cmd>lua require("fzf-lua").git_commits()<cr>', desc = '[s]earch [c]ommits on workspace' },
    { '<leader>sC', '<cmd>lua require("fzf-lua").git_bcommits()<cr>', desc = '[s]earch [C]ommits on buffer' },
    -- { '<leader>sgd', '<cmd>lua require("fzf-lua").git_diff()<cr>', desc = '[s]earch [g]it [d]iff' },
  },
}
