vim.g.mapleader = " "

vim.keymap.set("n", "<leader>-", vim.cmd.Ex)

-- just to learn to use hjkl instead of the arrows
vim.keymap.set({ "n", "v" }, "<Left>", "")
vim.keymap.set({ "n", "v" }, "<Down>", "")
vim.keymap.set({ "n", "v" }, "<Up>", "")
vim.keymap.set({ "n", "v" }, "<Right>", "")

-- move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({ "n", "v" }, "<leader>p", "\"_dP")

-- split window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
