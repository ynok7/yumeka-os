return {
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

	dashboard.section.buttons.val = {
	    dashboard.button("<leader>e", "> File Explorer", "<CMD>lua MiniFiles.open()<CR>"),
	    dashboard.button("<leader>ff", "> Telescope", "<CMD>Telescope find_files<CR>"),
	    dashboard.button("<leader>fg", "> Find Grep", "<CMD>Telescope live_grep<CR>"),
	}

	alpha.setup(dashboard.opts)
    end,
}
