return {
  "ThePrimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>j", ui.toggle_quick_menu, { desc = "Harpoon: Toggle menu" })

    vim.keymap.set("n", "<C-x>", function()
      ui.nav_file(1)
    end)

    vim.keymap.set("n", "<C-n>", function()
      ui.nav_file(2)
    end)

    vim.keymap.set("n", "<C-s>", function()
      ui.nav_file(3)
    end)

    vim.keymap.set("n", "<C-m>", function()
      ui.nav_file(4)
    end)
  end,
}
