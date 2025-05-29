return { 
    {
	'echasnovski/mini.nvim', version = false,
	config = function ()
	    require('mini.files').setup({
		windows = {
		    preview = true,
		}
	    })
	    
	    require('mini.pairs').setup()
	    require('mini.comment').setup()

	    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end
    },
}


