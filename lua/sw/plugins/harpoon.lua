return {
  -- Customize or remove this keymap to your liking
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, {
      desc = "Harpoon - Add current file to harpoon",
    })
    vim.keymap.set("n", "<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {
      desc = "Harpoon - Toggle quick menu",
    })

    vim.keymap.set("n", "<leader>hrh", function() harpoon:list():remove_at(1) end, {
      desc = "Harpoon - Remove first file from the list",
    })
    vim.keymap.set("n", "<leader>hrj", function() harpoon:list():remove_at(2) end, {
      desc = "Harpoon - Remove second file from the list",
    })
    vim.keymap.set("n", "<leader>hrk", function() harpoon:list():remove_at(3) end, {
      desc = "Harpoon - Remove third file from the list",
    })
    vim.keymap.set("n", "<leader>hrl", function() harpoon:list():remove_at(4) end, {
      desc = "Harpoon - Remove fourth file from the list",
    })


    vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev({ ui_nav_wrap = true }) end, {
      desc = "Harpoon - Open previous file in list",
    })
    vim.keymap.set("n", "<leader>hn", function() harpoon:list():next({ ui_nav_wrap = true }) end, {
      desc = "Harpoon - Open next file in list",
    })

    vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end, {
      desc = "Harpoon - Open first file in list",
    })
    vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end, {
      desc = "Harpoon - Open second file in list",
    })
    vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end, {
      desc = "Harpoon - Open third file in list",
    })
    vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end, {
      desc = "Harpoon - Open fourth file in list",
    })

    -- <leader>hoX stands for harpoon override X. Previous <leader>hrX (harpoon replace X)
    -- was inconvenient and <leader>hnX made harpoon next() slower
    vim.keymap.set("n", "<leader>hoh", function() harpoon:list():replace_at(1) end, {
      desc = "Harpoon - Replace first file in list",
    })
    vim.keymap.set("n", "<leader>hoj", function() harpoon:list():replace_at(2) end, {
      desc = "Harpoon - Replace second file in list",
    })
    vim.keymap.set("n", "<leader>hok", function() harpoon:list():replace_at(3) end, {
      desc = "Harpoon - Replace third file in list",
    })
    vim.keymap.set("n", "<leader>hol", function() harpoon:list():replace_at(4) end, {
      desc = "Harpoon - Replace fourth file in list",
    })
  end
}
