vim.g.mapleader = " "

local keybinds = {
    netrw = "<leader>cd",
    file_explorer = "<leader>e",
    dashboard = "<leader>d"
}

vim.keymap.set("", keybinds.file_explorer, "<CMD>lua MiniFiles.open()<CR>")
vim.keymap.set("n", keybinds.netrw, vim.cmd.Ex)
vim.keymap.set("n", keybinds.dashboard, "<CMD>Alpha<CR>")

return keybinds
