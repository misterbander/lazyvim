-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local LazyVim = require("lazyvim.util")

-- Disable default keymaps
vim.keymap.del("n", "<leader>fn") -- New File
vim.keymap.del("n", "<leader>ft") -- Terminal (Root Dir)
vim.keymap.del("n", "<leader>fT") -- Terminal (cwd)
vim.keymap.del("n", "<C-W>d") -- Show diagnostics under cursor
vim.keymap.del("n", "<C-W><C-D>") -- Show diagnostics under cursor
vim.keymap.del("n", "<C-W>Þ") -- WTF IS THIS??
vim.keymap.del("t", "<Esc><Esc>")

vim.keymap.set({ "n", "i", "x", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save All " }) -- Save all
-- Open lazygit in fullscreen
vim.keymap.set("n", "<leader>gg", function()
  LazyVim.terminal.open({ "lazygit" }, { size = { width = 1, height = 1 } })
end, { desc = "Lazygit (cwd)" })

-- Move lines
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

vim.keymap.set("n", "<C-w>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })

-- Ctrl+Backspace deletes a word
vim.keymap.set("i", "<C-H>", "<C-W>", { desc = "Delete word", remap = true })

-- Ctrl+/ toggles comment
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Toggle comment line", remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { desc = "Toggle comment line", remap = true })
vim.keymap.set("v", "<C-/>", "gc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<C-_>", "gc", { desc = "Toggle comment", remap = true })

vim.keymap.set("t", "<C-x>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- Alt-1, Alt-2, Alt-3 toggles respective horizontal terminals.
vim.keymap.set("n", "<M-1>", "<cmd>1ToggleTerm direction=horizontal<cr>")
vim.keymap.set("n", "<M-2>", "<cmd>2ToggleTerm direction=horizontal<cr>")
vim.keymap.set("n", "<M-3>", "<cmd>3ToggleTerm direction=horizontal<cr>")
vim.keymap.set("t", "<M-1>", "<C-\\><c-n><cmd>1ToggleTerm directio=horizontal<cr>")
vim.keymap.set("t", "<M-2>", "<C-\\><c-n><cmd>2ToggleTerm directio=horizontal<cr>")
vim.keymap.set("t", "<M-3>", "<C-\\><c-n><cmd>3ToggleTerm directio=horizontal<cr>")
