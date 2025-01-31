-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Disable default keymaps
vim.keymap.del("n", "<leader>fb") -- Find Buffers
vim.keymap.del("n", "<leader>fc") -- Find Config File
vim.keymap.del("n", "<leader>ff") -- Find Files
vim.keymap.del("n", "<leader>fF") -- Find Files (cwd)
vim.keymap.del("n", "<leader>fg") -- Find Files (git-files)
vim.keymap.del("n", "<leader>fn") -- New File
vim.keymap.del("n", "<leader>fr") -- Find recent
vim.keymap.del("n", "<leader>fR") -- Find recent (cwd)
vim.keymap.del("n", "<leader>ft") -- Terminal (Root Dir)
vim.keymap.del("n", "<leader>fT") -- Terminal (cwd)
vim.keymap.del("n", "<leader>sg") -- Grep (Root Dir)
vim.keymap.del("n", "<C-W>d") -- Show diagnostics under cursor
vim.keymap.del("n", "<C-W><C-D>") -- Show diagnostics under cursor

vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<cr>", { desc = "Find Files" }) -- Find Files
vim.keymap.set("n", "<leader>st", "<cmd>FzfLua live_grep<cr>", { desc = "Grep (Root Dir)" }) -- Grep (Root Dir)
vim.keymap.set({ "n", "i", "x", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save All " })
-- Open lazygit in fullscreen
vim.keymap.set("n", "<leader>gg", function()
  Snacks.lazygit({ win = { width = 0.99, height = 0.99 } }) -- For some stupid reason width and height of 1 doesn't work
end, { desc = "Lazygit (cwd)" })

-- Move lines
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down", silent = true })
vim.keymap.set("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up", silent = true })

vim.keymap.set("n", "<C-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- Ctrl+Backspace deletes a word
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete word", remap = true })

-- Ctrl+/ toggles comment
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Toggle comment line", remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { desc = "Toggle comment line", remap = true })
vim.keymap.set("v", "<C-/>", "gc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<C-_>", "gc", { desc = "Toggle comment", remap = true })

vim.keymap.set("t", "<C-x>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- Alt-1, Alt-2, Alt-3 toggles respective horizontal terminals.
vim.keymap.set("n", "<M-1>", function()
  Snacks.terminal.toggle()
end)
vim.keymap.set("n", "<M-2>", function()
  Snacks.terminal.toggle(nil, { env = { id = "2" } })
end)
vim.keymap.set("n", "<M-3>", function()
  Snacks.terminal.toggle(nil, { env = { id = "3" } })
end)
vim.keymap.set("t", "<M-1>", function()
  Snacks.terminal.toggle()
    if vim.bo.buftype ~= "terminal" then
    vim.fn.feedkeys("<C-W>l", "t")
  end
end)
vim.keymap.set("t", "<M-2>", function()
  Snacks.terminal.toggle(nil, { env = { id = "2" } })
  if vim.bo.buftype ~= "terminal" then
    vim.fn.feedkeys("<C-W>l", "t")
  end
end)
vim.keymap.set("t", "<M-3>", function()
  Snacks.terminal.toggle(nil, { env = { id = "3" } })
  if vim.bo.buftype ~= "terminal" then
    vim.fn.feedkeys("<C-W>l", "t")
  end
end)
