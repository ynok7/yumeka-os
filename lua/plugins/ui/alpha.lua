return {
    "goolord/alpha-nvim",
    config = function()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	local art = [[


██╗   ██╗██╗   ██╗███╗   ███╗███████╗██╗  ██╗ █████╗ 
╚██╗ ██╔╝██║   ██║████╗ ████║██╔════╝██║ ██╔╝██╔══██╗
 ╚████╔╝ ██║   ██║██╔████╔██║█████╗  █████╔╝ ███████║
  ╚██╔╝  ██║   ██║██║╚██╔╝██║██╔══╝  ██╔═██╗ ██╔══██║
   ██║   ╚██████╔╝██║ ╚═╝ ██║███████╗██║  ██╗██║  ██║
   ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝
                                                     

	    ]]

	dashboard.section.header.val = vim.split(art, "\n")

	dashboard.section.buttons.val = {
	    dashboard.button("e", " " .. " File Explorer", "<CMD>lua MiniFiles.open()<CR>"),
	    dashboard.button("f", " " .. " Telescope", "<CMD>Telescope find_files<CR>"),
	    dashboard.button("g", " " .. " Find Grep", "<CMD>Telescope live_grep<CR>"),
	    dashboard.button("q", " " .. " Quit", "<CMD>qa<CR>"),
	}

	alpha.setup(dashboard.opts)

	vim.api.nvim_create_autocmd("User", {
	    once = true,
	    pattern = "LazyVimStarted",
	    callback = function()
		local stats = require("lazy").stats()
		local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
		dashboard.section.footer.val = "⚡ Neovim loaded "
		    .. stats.loaded
		    .. "/"
		    .. stats.count
		    .. " plugins in "
		    .. ms
		    .. "ms"
		pcall(vim.cmd.AlphaRedraw)
	    end,
	})
    end,
}
