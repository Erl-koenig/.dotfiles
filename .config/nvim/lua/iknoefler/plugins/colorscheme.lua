return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    priority = 1000,
    config = function()
      require("tokyodark").setup({})
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({})
      vim.cmd("colorscheme rose-pine-main")
    end,
  },
  {
    "olivercederborg/poimandres.nvim",
    priority = 1000,
    config = function()
      require("poimandres").setup({})
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        colors = {
          theme = {
            all = { ui = { bg_gutter = "none", bg_p2 = "#2c3043" } },
          },
        },
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        terminal_colors = false,
        cache = true,
        borderless_telescope = { border = false, style = "flat" },
        theme = { variant = "auto" },
      })
    end,
  },
}
