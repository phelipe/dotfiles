-- Este plugin melhora a aparência das janelas de documentação e erros
return {
  'ray-x/lsp_signature.nvim',
  -- event = { 'BufEnter' },
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('lsp_signature').setup {
      bind = true,
      handler_opts = {
        border = 'rounded',
      },
    }
    vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = 'single',
    })
  end,
}
