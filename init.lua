local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
	gh('mason-org/mason.nvim'),
	gh('mason-org/mason-lspconfig.nvim'),
	gh('neovim/nvim-lspconfig'),
	gh('hrsh7th/cmp-nvim-lsp'),
	gh('hrsh7th/nvim-cmp'),
	gh('windwp/nvim-autopairs')
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { "clangd" }
})
require('cmp').setup({
	sources = {
		{name = 'nvim_lsp'},
	}
})

require('nvim-autopairs').setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config(
	'clangd', {
		capabilities = capabilities
	}
)

vim.keymap.set('n', '<C-s>', vim.cmd.w)

vim.api.nvim_set_hl(0, 'Normal', {bg='none'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='none'})
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='none'})
vim.api.nvim_set_hl(0, 'Pmenu', {bg='none'})

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
