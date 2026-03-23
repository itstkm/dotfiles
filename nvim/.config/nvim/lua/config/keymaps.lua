-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Cmd+P: File search
map("n", "<D-p>", "<leader>ff", { desc = "Find Files", remap = true })

-- Cmd+Shift+F: Global text search
map("n", "<D-S-f>", "<leader>sg", { desc = "Grep", remap = true })

-- Cmd+B: Toggle sidebar
map("n", "<D-b>", "<leader>e", { desc = "Toggle Explorer", remap = true })

-- Cmd+/: Toggle comment
map("n", "<D-/>", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<D-/>", "gc", { desc = "Toggle Comment", remap = true })

-- Cmd+S: Save
map({ "n", "i", "v" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save" })

-- Cmd+Z: Undo
map("n", "<D-z>", "u", { desc = "Undo" })

-- Cmd+Shift+Z: Redo
map("n", "<D-S-z>", "<C-r>", { desc = "Redo" })
