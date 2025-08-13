return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  keys = {
    {
      "<leader>fc",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        json = { "prettierd" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = { "*.lua", "*.json", "*.js", "*.jsx", "*.ts", "*.tsx" },
      callback = function()
        conform.format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end,
    })
  end,
}
