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

	lspconfig.ts_ls.setup({
	    filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
	})

	-- vue language server
	lspconfig.volar.setup({
	    -- add filetypes for typescript, javascript and vue
	    filetypes = { "vue" },
	    init_options = {
		vue = {
		    -- disable hybrid mode
		    hybridMode = false,
		},
	    },
	})


	-- lspconfig.ts_ls.setup({
	--     cap = cap,
	--     init_options = {
	-- 	plugins = {
	-- 	    {
	-- 		name = "@vue/typescript-plugin",
	-- 		location = "/usr/local/lib/node_modules/@vue/language-server",
	-- 		languages = { "vue" },
	-- 	    }
	-- 	}
	--     },
	--     filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	-- })


	-- Keybinds
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set({'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
}
