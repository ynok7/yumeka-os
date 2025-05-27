local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
    {
	"folke/tokyonight.nvim",
	config = function()
	    vim.cmd.colorscheme("tokyonight")
	    enable_transparency()
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
    {
	"goolord/alpha-nvim",
	config = function()
	    local alpha = require("alpha")
	    local dashboard = require("alpha.themes.dashboard")

	    local art = [[

██╗   ██╗    ██╗   ██╗    ███╗   ███╗    ███████╗    ██╗  ██╗     █████╗ 
╚██╗ ██╔╝    ██║   ██║    ████╗ ████║    ██╔════╝    ██║ ██╔╝    ██╔══██╗
 ╚████╔╝     ██║   ██║    ██╔████╔██║    █████╗      █████╔╝     ███████║
  ╚██╔╝      ██║   ██║    ██║╚██╔╝██║    ██╔══╝      ██╔═██╗     ██╔══██║
   ██║       ╚██████╔╝    ██║ ╚═╝ ██║    ███████╗    ██║  ██╗    ██║  ██║
   ╚═╝        ╚═════╝     ╚═╝     ╚═╝    ╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝

	    ]]

	    dashboard.section.header.val = vim.split(art, "\n")

	    alpha.setup(dashboard.opts)
	end,
    },
}
