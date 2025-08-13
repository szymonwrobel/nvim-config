return {
  'sindrets/diffview.nvim',
  config = function()
    require("diffview").setup({
      default_args = {
        DiffviewOpen = { "--imply-local" },
      }
    })
    vim.keymap.set("n", "<leader>gs", "<cmd>DiffviewOpen<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>gc", "<cmd>DiffviewClose<CR>", { noremap = true, silent = true })
  end
}
