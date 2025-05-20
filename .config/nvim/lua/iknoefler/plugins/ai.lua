return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
  },
  {
    "olimorris/codecompanion.nvim",
    config = function()
      require("codecompanion").setup({
        display = {
          chat = {
            show_header_separator = true,
            show_settings = false,
            show_references = true,
            show_token_count = true,
            window = {
              opts = {
                number = false,
                signcolumn = "no",
              },
            },
          },
        },
        strategies = {
          chat = {
            adapter = "copilot",
            keymaps = {
              completion = {
                modes = { i = "<C-/>" },
                callback = "keymaps.completion",
                description = "Completion Menu",
              },
            },
          },
        },
      })
    end,
  },
}
