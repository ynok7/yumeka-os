return {
    {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
	    require("catppuccin").setup({
		flavour = "auto",
		-- transparent_background = true,
	    })
	    vim.cmd.colorscheme("catppuccin")
	end,
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = "tokyonight",
	},
    },
}
