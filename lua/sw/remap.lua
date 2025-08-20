vim.g.mapleader = " "

vim.keymap.set("n", "<leader>-", vim.cmd.Ex, { desc = "Exit to file explorer" })

-- just to learn to use hjkl instead of the arrows
vim.keymap.set({ "n", "v" }, "<Left>", "", {
  desc = "Disable left arrow in normal and visual mode"
})
vim.keymap.set({ "n", "v" }, "<Down>", "", {
  desc = "Disable down arrow in normal and visual mode"
})
vim.keymap.set({ "n", "v" }, "<Up>", "", {
  desc = "Disable up arrow in normal and visual mode"
})
vim.keymap.set({ "n", "v" }, "<Right>", "", {
  desc = "Disable right arrow in normal and visual mode"
})

-- move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv",
  { desc = "Move selected lines down" }
)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv",
  { desc = "Move selected lines up" }
)

-- move vertically
vim.keymap.set("n", "<C-d>", "<C-d>zz", {
  desc = "Move down and center screen"
})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {
  desc = "Move up and center screen"
})

vim.keymap.set({ "n", "v" }, "<leader>p", [["_dP]], {
  desc = "Paste without overwriting the default register"
})
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], {
  desc = "Delete without overwriting the default register"
})

-- split window navigation
vim.keymap.set("n", "<C-s>x", "<C-w>s", {
  desc = "Split window horizontally ↓"
})
vim.keymap.set("n", "<C-s>d", "<C-w>v", {
  desc = "Split window vertically →"
})
vim.keymap.set("n", "<C-h>", "<C-w>h", {
  desc = "Move to the left window"
})
vim.keymap.set("n", "<C-j>", "<C-w>j", {
  desc = "Move to the bottom window"
})
vim.keymap.set("n", "<C-k>", "<C-w>k", {
  desc = "Move to the top window"
})
vim.keymap.set("n", "<C-l>", "<C-w>l", {
  desc = "Move to the right window"
})
-- split window resizing
vim.keymap.set("n", "<C-s>=", "<C-w>+", {
  desc = "Increase window height"
})
vim.keymap.set("n", "<C-s>-", "<C-w>-", {
  desc = "Decrease window height"
})
vim.keymap.set("n", "<C-s>.", "<C-w>>", {
  desc = "Increase window width"
})
vim.keymap.set("n", "<C-s>,", "<C-w><", {
  desc = "Decrease window width"
})

-- format file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {
  desc = "Format file with LSP"
})
