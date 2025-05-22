vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("x", "<leader>p", '"_dP') -- paste without changing register
keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Clear search highlights" })

keymap.set("n", "x", '"_x', { desc = "Delete character" }) -- without changing register

keymap.set("n", "<leader>w", ":w!<cr>")
keymap.set("n", "<leader>q", ":q!<cr>")

keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs
keymap.set("n", "<leader>t", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<S-l>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-h>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })

-- indent with tabs in normal mode
keymap.set("n", "<Tab>", ">>")
keymap.set("n", "<S-Tab>", "<<")

-- move highlighted text in Visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in the same place
keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when searching
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fp", "<cmd>Telescope colorscheme enable_preview=true<cr>", { desc = "Change theme" })

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>")

-- Snacks
keymap.set("n", "<leader>lg", function()
  Snacks.lazygit()
end, { desc = "Open lazygit" })

keymap.set("n", "<leader>z", function()
  Snacks.zen()
end, { desc = "Toggle Zen Mode" })

keymap.set("n", "<leader>Z", function()
  Snacks.zen.zoom()
end, { desc = "Toggle Zoom" })

keymap.set("n", "<leader>gB", function()
  Snacks.gitbrowse()
end, { desc = "Git Browse" })

-- other
keymap.set({ "n" }, "<leader>md", "<cmd>RenderMarkdown toggle<cr>", { noremap = true, silent = true })

keymap.set({ "n", "v" }, "<leader><leader>a", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
keymap.set({ "n" }, "<C-c>", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
keymap.set({ "v" }, "<C-c>", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- surround
-- `ys<motion><char>` - add/you surround, e.g. `ysiw(`
-- `cs<old><new>` - change surround
-- `ds<char>` - delete surround

-- comments
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
