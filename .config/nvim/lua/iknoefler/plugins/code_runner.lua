return {
  "CRAG666/code_runner.nvim",
  lazy = true,
  keys = {
    { "<leader><leader>r", "<cmd>RunCode<cr>", mode = { "n", "v" }, desc = "Run current file or selection" },
    { "<leader><leader>rp", "<cmd>RunProject<cr>", mode = "n", desc = "Run project" },
    { "<leader><leader>rc", "<cmd>RunClose<cr>", mode = "n", desc = "Close runner" },
  },
  opts = {
    filetype = {
      python = "python3 -u $fileName",
      javascript = "node $fileName",
      typescript = "deno run $fileName",
      java = {
        "cd $dir &&",
        "javac $fileName &&",
        "java $fileNameWithoutExt",
      },
      c = {
        "cd $dir &&",
        "gcc $fileName -o /tmp/$fileNameWithoutExt &&",
        "/tmp/$fileNameWithoutExt &&",
        "rm /tmp/$fileNameWithoutExt",
      },
      go = "go run $fileName",
    },
  },
}
