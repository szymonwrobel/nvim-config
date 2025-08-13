return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "[t",
      "<cmd>Trouble diagnostics next<cr>",
      desc = "Diagnostics next (Trouble)",
    },
    {
      "]t",
      "<cmd>Trouble diagnostics prev<cr>",
      desc = "Diagnostics previous (Trouble)",
    },
  },
}
