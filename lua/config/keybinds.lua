vim.g.mapleader = " "

local keybinds = {
    netrw = "<leader>cd",
    file_explorer = "<leader>e"
}

vim.keymap.set("", keybinds.file_explorer, "<CMD>lua MiniFiles.open()<CR>")
vim.keymap.set("n", keybinds.netrw, vim.cmd.Ex)

return keybinds
