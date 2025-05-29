return { 
    {
	'echasnovski/mini.files', version = false,
	config = function ()
	    require('mini.files').setup({
		windows = {
		    preview = true,
		}
	    })
	    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end
    },
}

