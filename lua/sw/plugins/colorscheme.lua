function ColorMyPencils(color)
  color = color or "onedark"
  vim.cmd.colorscheme(color)
end

return {
  -- {
  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- opts = {},
  -- priority = 1000,
  -- config = function()
  --   require("tokyonight").setup({
  --     transparent = false,
  --     styles = {
  --       floats = "transparent",
  --       sidebars = "transparent",
  --       keywords = { italic = false },
  --     }
  --   })
  --   ColorMyPencils()
  -- end
  -- },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true
        }
      })
      ColorMyPencils()
    end
  }
}
