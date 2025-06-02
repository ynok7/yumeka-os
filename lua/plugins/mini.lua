return { 
    {
	'echasnovski/mini.nvim', version = false,
	config = function ()
	    require('mini.files').setup() -- file explorer
	    require('mini.pairs').setup() -- auto pairs (e.g: () or [])
	    require('mini.comment').setup()  -- comment made easy
	end
    },
}

