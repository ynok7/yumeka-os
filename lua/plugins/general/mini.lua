return { 
    {
	'echasnovski/mini.nvim', version = false,
	config = function ()
	    require('mini.files').setup()
	    require('mini.pairs').setup() -- auto pairs (e.g: () or [])
	    require('mini.comment').setup() 

	    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end
    },
}


