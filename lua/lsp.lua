require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'clangd' }
})
require('cmp').setup({
    sources = {{ name = 'nvim_lsp' }}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config(
    'clangd', {
        capabilities = capabilities
    }
)
