vim.g.mapleader = " "

local keybinds = {
    netrw = "<leader>cd",
    file_explorer = "<leader>e",
    dashboard = "<leader>d",
    quit_neovim = "<leader>q"
}

vim.keymap.set("", keybinds.file_explorer, "<CMD>lua MiniFiles.open()<CR>")
vim.keymap.set("n", keybinds.netrw, vim.cmd.Ex)
vim.keymap.set("n", keybinds.dashboard, "<CMD>Alpha<CR>")

vim.keymap.set("n", keybinds.quit_neovim, "<CMD>wqa<CR>")

return keybinds
