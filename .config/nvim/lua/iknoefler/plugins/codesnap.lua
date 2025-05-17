return {
  "mistricky/codesnap.nvim",
  lazy = true,
  build = "make",
  keys = {
    { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
  },
  opts = {
    save_path = "~/Pictures",
    has_breadcrumbs = false, -- don't display filepath
    bg_color = "#535c68",
    watermark = "",
  },
}
