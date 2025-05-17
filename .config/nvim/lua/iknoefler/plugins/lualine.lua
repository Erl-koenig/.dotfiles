return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lualine_nightfly = require("lualine.themes.nightfly")

    local colors = {
      blue = "#7fb4ca",
      purple = "#957fb8",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      black = "#000000",
      red = "#FF4A4A",
      fg = "#c3ccdc",
      bg = "#112638",
      inactive_bg = "#2c3043",
    }

    lualine_nightfly.normal.a.bg = colors.purple
    lualine_nightfly.insert.a.bg = colors.green
    lualine_nightfly.visual.a.bg = colors.violet
    lualine_nightfly.command = {
      a = {
        gui = "bold",
        bg = colors.yellow,
        fg = colors.black,
      },
    }

    lualine.setup({
      options = {
        theme = lualine_nightfly,
      },
    })
  end,
}
