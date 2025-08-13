return {
  -- Customize or remove this keymap to your liking
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
    vim.keymap.set("n", "<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev({ ui_nav_wrap = true }) end)
    vim.keymap.set("n", "<leader>hn", function() harpoon:list():next({ ui_nav_wrap = true }) end)

    vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end)

    -- <leader>hoX stands for harpoon override X. Previous <leader>hrX (harpoon replace X)
    -- was inconvenient and <leader>hnX made harpoon next() slower
    vim.keymap.set("n", "<leader>hoh", function() harpoon:list():replace_at(1) end)
    vim.keymap.set("n", "<leader>hoj", function() harpoon:list():replace_at(2) end)
    vim.keymap.set("n", "<leader>hok", function() harpoon:list():replace_at(3) end)
    vim.keymap.set("n", "<leader>hol", function() harpoon:list():replace_at(4) end)
  end
}
