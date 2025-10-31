return {
  "github/copilot.vim",
  config = function()
    vim.keymap.set("n", "<leader><leader>ce", "<cmd>Copilot enable<CR>",
      { noremap = true, silent = true, desc = "Enable Copilot" })
    vim.keymap.set("n", "<leader><leader>cd", "<cmd>Copilot disable<CR>",
      { noremap = true, silent = true, desc = "Disable Copilot" })
  end
}
