return {
    {
	"l3mon4d3/luasnip",
	dependencies = {
	    "saadparwaiz1/cmp_luasnip",
	    "rafamadriz/friendly-snippets",
	},
    },
    {
	"hrsh7th/nvim-cmp",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	},
	config = function()
	    local cmp = require("cmp")
	    require("luasnip.loaders.from_vscode").lazy_load()

	    cmp.setup({
		snippet = {
		    expand = function(args)
			require("luasnip").lsp_expand(args.body)
		    end,
		},
		window = {
		    completion = cmp.config.window.bordered(),
		    documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
		    ["<c-b>"] = cmp.mapping.scroll_docs(-4),
		    ["<c-f>"] = cmp.mapping.scroll_docs(4),
		    ["<c-space>"] = cmp.mapping.complete(),
		    ["<c-e>"] = cmp.mapping.abort(),
		    ["<cr>"] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
		    { name = "nvim_lsp" },
		    { name = "luasnip" },
		}, {
		    { name = "buffer" },
		}),
	    })
	end,
    }
}

