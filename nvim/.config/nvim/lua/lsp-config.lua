local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'dtail',
    'additionalTextEdits',
  }
}



require'lspconfig'.html.setup{
    capabilities = capabilities,
}
require'lspconfig'.clangd.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.jsonls.setup{}
--require'lspconfig'.pyright.setup{}
