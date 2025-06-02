return {
    'neovim/nvim-lspconfig',
    dependencies = {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
    },
    config = function()
	local lspconfig = require('lspconfig')

	require('mason').setup({})
	require('mason-lspconfig').setup({
	    lazy = false,
	    opts = {
		auto_install = true,
	    }
	})

	local cap = vim.tbl_deep_extend("force",
	    vim.lsp.protocol.make_client_capabilities(),
	    require('cmp_nvim_lsp').default_capabilities()
	)

	lspconfig.lua_ls.setup({
	    cap = cap
	})

	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set({'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
}
